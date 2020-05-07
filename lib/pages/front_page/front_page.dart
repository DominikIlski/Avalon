import 'package:flutter/material.dart';

import 'widgets/join_game_button.dart';
import 'widgets/new_game_button.dart';
import 'widgets/title.dart' as ragnarok_title;

/// public
class FrontPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}

/// public
class HomePage extends StatelessWidget {
  void tester() => print('button pressed');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            ragnarok_title.Title(),
            
            //TODO: implement route function
            NewGameButton(tester),
            JoinGameButton(tester),
            //AssetButton(_connectToGamePath, null),
          ],
        ),
      ),
    );
  }
}
