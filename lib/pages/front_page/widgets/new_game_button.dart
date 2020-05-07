import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

///public title
class NewGameButton extends StatelessWidget {
  static final String _newGamePath = 'assets/new_game.svg';
  final VoidCallback _routeFunction;

  ///
  NewGameButton(this._routeFunction);

  Widget _button(BuildContext context) => SvgPicture.asset(
    _newGamePath,
    width: MediaQuery.of(context).size.width * 0.9,
    height: 50,
    
    //alignment: Alignment.center,
    placeholderBuilder: (context) => CircularProgressIndicator(),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Align(
        alignment: Alignment(0, 0.70),
        child: FlatButton(
          child: _button(context),
          onPressed: _routeFunction,
        ),
      ),
    );
  }
}
