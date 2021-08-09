import 'package:flutter/material.dart';
import 'package:linwood_city/services/game/player.dart';
import 'package:linwood_city/services/game/system.dart';

/// Define a new game mode which can be played.
abstract class GameMode {
  void join(Player player);

  void leave(Player player);

  void stop();

  void start(GameSystem game);

  void read(Player player, String message);

  Widget build(BuildContext context);
}
