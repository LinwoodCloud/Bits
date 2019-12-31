import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:minigamesparty/game/gamemode.dart';

class CreatePage extends StatefulWidget {
  CreatePage({Key key}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  _CreatePageState createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {

  var _selectedGamemode;
  var gameModes = ["Memory"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Create"),
        ),
        body: SingleChildScrollView(child: Column(children: <Widget>[])),
        floatingActionButton: Builder(builder: (BuildContext context) {
          return new FloatingActionButton(
            child: Icon(MdiIcons.check),
            onPressed: () {
              create();
            },
          );
        }));
  }

  void create() {
    bool isOn = false;
    if (!isOn) {
      Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text(
              "You need bluetooth for this. Do you want to activate bluetooth?"),
          action: SnackBarAction(
            label: "Yes",
            onPressed: () {},
          ),
        ),
      );
      return;
    }
    GameModeManager gameModeManager = GameModeManager();
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Column(children: <Widget>[
        Icon(MdiIcons.bluetooth),
        Text("Successfully started game!")
      ]),
    ));
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => gameModeManager.currentGameMode),
    );
  }
}