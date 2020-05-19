import 'package:flare_flutter/flare.dart';
import 'package:flare_flutter/flare_controller.dart';
import 'package:flutter/material.dart';


import '../../shared/widgets/main_button.dart';

import 'widgets/title.dart' as ragnarok_title;

/// public
class FrontPage extends StatefulWidget {
  //TODO: implement route function

  @override
  _FrontPageState createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  void tester() => print('button pressed');
  static final _openingAnimation = 'OpeningAnimation';
  static final _animationDuration = Duration(milliseconds: 1000);
  static var _visable = false;

  double visability() => _visable ? 1.0 : 0.0;

  void _startButtonsAnimation() {
    setState(() {
      _visable = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          ragnarok_title.Title(
            ragnarok_title.TitleController(_openingAnimation,
                buttonAnimation: _startButtonsAnimation),
          ),
          Align(
            alignment: Alignment(0, 0.8),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                AnimatedOpacity(
                  opacity: visability(),
                  duration: _animationDuration,
                  child: MainButton('New Game', tester),
                ),
                AnimatedOpacity(
                  opacity: visability(),
                  duration: _animationDuration,
                  child: MainButton('Join Game', tester),
                ),
              ],
            ),
          )
          //AssetButton(_connectToGamePath, null),
        ],
      ),
    );
  }
}

///

