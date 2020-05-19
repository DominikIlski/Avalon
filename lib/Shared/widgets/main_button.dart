import 'package:flutter/material.dart';

///public title
class MainButton extends StatefulWidget {
  final VoidCallback _routeFunction;
  final String _buttonText;
  

  ///
  MainButton(this._buttonText, this._routeFunction);

  @override
  _MainButtonState createState() => _MainButtonState();
}

class _MainButtonState extends State<MainButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
          color: Color(0xff212122),
          child: FittedBox(
              fit: BoxFit.fitWidth,
              child: Container(
                margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                  widget._buttonText,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              )
          ),
          onPressed: widget._routeFunction),
      margin: EdgeInsets.only(right: 20, left: 20, bottom: 10),
    );
  }
}
