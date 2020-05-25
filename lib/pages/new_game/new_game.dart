import 'package:flutter/material.dart';


import '../../shared/Models/Charakters/Charakter.dart';

///
class NewGame extends StatefulWidget {
  @override
  _NewGameState createState() => _NewGameState();
}

class _NewGameState extends State<NewGame> {
  var _playersCount = 5;
  var _charakters = <Charakter>[];
  String _gameCode;
  String _hostName;

  ///
  set playersAmount(int count) => _playersCount = count;

  ///
  int get playersAmount => _playersCount;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3, child: Scaffold(
      appBar:  TabBar(
        tabs: 
        [
          SafeArea(child: Tab(icon: Icon(Icons.account_circle),)),
          SafeArea(child: Tab(icon: Icon(Icons.contacts),)),
          SafeArea(child: Tab(icon: Icon(Icons.view_headline),)),

        ])
    ));
  }
}
