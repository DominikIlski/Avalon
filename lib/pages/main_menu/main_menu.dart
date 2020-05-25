import 'package:flutter/material.dart';

import '../../shared/widgets/main_button_animation.dart';

import 'widgets/title.dart' as ragnarok_title;

/// public
class MainManu extends StatefulWidget {
  //TODO: implement route function

  @override
  _MainManuState createState() => _MainManuState();
}

class _MainManuState extends State<MainManu> {
  void newGameRoute() => Navigator.pushNamed(context, '/newGame');
  void joinGameRoute() => Navigator.pushNamed(context, '/joinGame');

  static final _openingAnimation = 'OpeningAnimation';
  static final _animationDuration = Duration(seconds: 1);
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
                MainButtonAnimation(
                    'New Game', _animationDuration, visability, newGameRoute),
                MainButtonAnimation(
                    'Join Game', _animationDuration, visability, joinGameRoute)
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
