import 'dart:convert';
import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qeck/models/server.dart';
import 'package:qeck/pages/game/logic/state.dart';

import 'client.dart';
import 'logic.dart';

part 'server.freezed.dart';
part 'server.g.dart';

@freezed
class ServerConnectionMessage with _$ServerConnectionMessage {
  const factory ServerConnectionMessage.fetchPlayers() =
      FetchPlayersServerConnectionMessage;

  const factory ServerConnectionMessage.chatMessage(String message) =
      ChatMessageServerConnectionMessage;

  const factory ServerConnectionMessage.addDeck(GameDeck deck) =
      AddDeckServerConnectionMessage;

  const factory ServerConnectionMessage.removeDeck(int index) =
      RemoveDeckServerConnectionMessage;

  const factory ServerConnectionMessage.addSeat(String name,
      [@Default([]) List<GameDeck> decks]) = AddSeatServerConnectionMessage;

  const factory ServerConnectionMessage.removeSeat(int index) =
      RemoveSeatServerConnectionMessage;

  const factory ServerConnectionMessage.joinSeat(int index) =
      JoinSeatServerConnectionMessage;

  const factory ServerConnectionMessage.leaveSeat(int index) =
      LeaveSeatServerConnectionMessage;

  factory ServerConnectionMessage.fromJson(Map<String, dynamic> json) =>
      _$ServerConnectionMessageFromJson(json);
}

class WebSocketClient {
  final WebSocket socket;
  final HttpConnectionInfo info;

  WebSocketClient(this.socket, this.info);
}

class ServerGameConnection with GameConnection {
  final HttpServer server;
  final List<WebSocketClient> clients = [];

  ServerGameConnection(this.server) {
    setup();
  }

  static Future<ServerGameConnection> create() async {
    return ServerGameConnection(
      await HttpServer.bind(
        InternetAddress.anyIPv4,
        kDefaultPort,
      ),
    );
  }

  @override
  Future<void> close() async {
    await server.close();
  }

  Future<void> setup() async {
    await for (HttpRequest request in server) {
      final info = request.connectionInfo;
      if (info == null) {
        request.response.statusCode = HttpStatus.forbidden;
        request.response.close();
        continue;
      }
      var socket = await WebSocketTransformer.upgrade(request);
      final client = WebSocketClient(socket, info);
      clients.add(client);
      _sendPlayersUpdated();

      // Listen for incoming messages from the client
      socket.listen((event) => _onMessage(client, event), onDone: () {
        clients.remove(client);
        _sendPlayersUpdated();
      });
    }
  }

  @override
  List<GamePlayer> get players => clients
      .map((e) => GamePlayer(
          name: e.info.remoteAddress.address, id: e.hashCode.toString()))
      .toList();

  @override
  int get playerId => -1;

  void _send(WebSocketClient client, ClientConnectionMessage message) {
    client.socket.add(jsonEncode(message));
  }

  void _sendPlayersUpdated() {
    for (final client in clients) {
      _send(
        client,
        ClientConnectionMessage.playersUpdated(players, client.hashCode),
      );
    }
  }

  void _sendToAll(ClientConnectionMessage message) {
    for (final client in clients) {
      _send(client, message);
    }
  }

  void _changeState(GameState state) {
    stateSubject.add(state);
    for (final client in clients) {
      _send(
        client,
        ClientConnectionMessage.stateChanged(
          state.onPlayer(
            client.socket.hashCode,
          ),
        ),
      );
    }
  }

  Future<void> _onMessage(WebSocketClient client, event) async {
    final message = ServerConnectionMessage.fromJson(jsonDecode(event));
    void sendBack(ClientConnectionMessage message) {
      _send(client, message);
    }

    message.when(
        fetchPlayers: () => sendBack(
              ClientConnectionMessage.playersUpdated(players, client.hashCode),
            ),
        chatMessage: (message) => _sendToAll(
              ClientConnectionMessage.chatMessage(
                message,
                client.info.remoteAddress.address,
              ),
            ),
        addDeck: (deck) {
          _changeState(state.copyWith(decks: [...state.decks, deck]));
        },
        removeDeck: (index) {
          _changeState(state.copyWith(
              decks: List<GameDeck>.from(state.decks)..removeAt(index)));
        },
        addSeat: (name, decks) {
          _changeState(state.copyWith(seats: [
            ...state.seats,
            GameSeat(
              name: name,
              decks: decks,
            ),
          ]));
        },
        removeSeat: (index) {
          _changeState(state.copyWith(
              seats: List<GameSeat>.from(state.seats)..removeAt(index)));
        },
        joinSeat: (index) {
          _changeState(state.copyWith(
              seats: List<GameSeat>.from(state.seats)
                ..[index] = state.seats[index].copyWith(
                  players: [...state.seats[index].players, client.hashCode],
                )));
        },
        leaveSeat: (index) {
          _changeState(state.copyWith(
              seats: List<GameSeat>.from(state.seats)
                ..[index] = state.seats[index].copyWith(
                  players: List<int>.from(state.seats[index].players)
                    ..remove(client.hashCode),
                )));
        });
  }
}