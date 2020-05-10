import 'package:flutter/material.dart';

///public title
class MainButton extends StatelessWidget {
  final VoidCallback _routeFunction;
  final String _buttonText;

  ///
  MainButton(this._buttonText, this._routeFunction);

  @override
  Widget build(BuildContext context) {
    return Container(
      
          child: RaisedButton(
              //color: Color(0xff212121),
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: Container(
                  margin: EdgeInsets.only(top:10, bottom:10),
                  child: Text(
                  _buttonText,
                  style: Theme.of(context).textTheme.bodyText1,
                ),)
              ),
              onPressed: _routeFunction),
      margin: EdgeInsets.only(right: 20, left: 20, bottom: 10),
    );
  }
}
