import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

///public title
class AssetButton extends StatelessWidget {
  static final String _connectToGamePath = 'assets/connect_to_game.svg';
  static final String _newGamePath = 'assets/new_game.svg';
  ButtonType _type = ButtonType.none;
  final VoidCallback _routeFunction;
  static String  _path;

  ///
  AssetButton(String test, this._routeFunction) {
    _path =  test;
  }

  final Widget _button = SvgPicture.asset(
    _path,
    alignment: Alignment.center,
    placeholderBuilder: (context) => CircularProgressIndicator(),
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        child: _button,
        onPressed: _routeFunction,
      ),
      margin: EdgeInsets.only(left: 10, right: 10),
      //width: double.infinity,
    );
  }
}

///
enum ButtonType {
  ///
  newGame,

  ///
  connectToGame,

  ///
  none
}
