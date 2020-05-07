import 'package:avalon/Shared/widgets/asset_button.dart';
import 'package:flutter/material.dart';

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
        body: Column(
          children: <Widget>[
            ragnarok_title.Title(),
            SizedBox(height: 100),
            //TODO: implement route function
            AssetButton('assets/connect_to_game.svg', tester),
            //AssetButton(_connectToGamePath, null),

          ],
        ),
      ),
    );
  }
}
