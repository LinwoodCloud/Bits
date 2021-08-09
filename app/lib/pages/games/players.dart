import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:linwood_city/services/game/system.dart';
import 'package:linwood_city/widgets/game/drawer.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class PlayersPage extends StatefulWidget {
  final GameSystem manager;

  PlayersPage({Key? key, required this.manager}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  _PlayersPageState createState() => _PlayersPageState();
}

class _PlayersPageState extends State<PlayersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Players"),
      ),
      drawer: GameDrawer(
        manager: widget.manager,
        page: GamePage.players,
      ),
      body: FutureBuilder(
          future: Future.delayed(Duration(seconds: 1)),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            List<Widget> children;
            if (snapshot.hasData) {
              children = <Widget>[
                ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (BuildContext context, int index) => ListTile(
                          title: Text(snapshot.data[index].name),
                          subtitle: Text(snapshot.data[index].id.id),
                        ))
              ];
            } else if (snapshot.hasError) {
              children = <Widget>[
                Icon(
                  PhosphorIcons.warningLight,
                  color: Theme.of(context).errorColor,
                  size: 60,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text('Error: ${snapshot.error}'),
                )
              ];
            } else {
              children = <Widget>[
                SizedBox(
                  child: CircularProgressIndicator(),
                  width: 60,
                  height: 60,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: Text('Awaiting result...'),
                )
              ];
            }
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: children,
              ),
            );
          }),
    );
  }
}
