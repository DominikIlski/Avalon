import 'package:flutter/material.dart';

import '../../shared/Models/Charakters/Charakter.dart';
import 'player_count.dart';

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

  
  
  //set playersAmount(int count) => _playersCount = count;

  void playerTester(int count) {  
    setState(()
    {
      _playersCount = count;
    });
  }
  ///
  int get playersAmount => _playersCount;

  set charakters(List<Charakter> listOfCharakters) =>
      _charakters = listOfCharakters;

  List<Charakter> get charakters => _charakters;

  set gameCode(String code) => _gameCode = code;

  String get gameCode => _gameCode;

  set hostName(String name) => _hostName = name;

  String get hostName => _hostName;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: TabBar(
            
            labelColor: Theme.of(context).accentColor,
            unselectedLabelColor: Color(0xff757575),
            tabs: [
            SafeArea(
                child: Tab(
              icon: Icon(Icons.account_circle),
            )),
            SafeArea(
                child: Tab(
              icon: Icon(Icons.contacts),
            )),
            SafeArea(
                child: Tab(
              icon: Icon(Icons.view_headline),
            )),
          ]),
          body: TabBarView(children: [PlayerCount(playerTester),
           Text("$_playersCount"), Text("$_playersCount")]),
        ));
  }
}
