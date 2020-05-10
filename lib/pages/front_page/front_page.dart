import 'package:flutter/material.dart';
import 'package:avalon/shared/widgets/main_button.dart';


import 'widgets/title.dart' as ragnarok_title;



/// public
class FrontPage extends StatelessWidget {
  //TODO: implement route function

  void tester() => print('button pressed');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          ragnarok_title.Title(),
          Align(
            alignment: Alignment(0,0.8),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                MainButton('New Game', tester),
                MainButton('Join Game', tester)
              ],
            ),
          )
          //AssetButton(_connectToGamePath, null),
        ],
      ),
    );
  }
}
