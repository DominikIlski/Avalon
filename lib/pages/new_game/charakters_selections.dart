import 'package:flutter/material.dart';

///
class CharakterSelection extends StatefulWidget {
  @override
  _CharakterSelectionState createState() => _CharakterSelectionState();
}

class _CharakterSelectionState extends State<CharakterSelection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: Container(
      margin: /*EdgeInsets.only(top: 50, bottom: 50, left: 50, right: 50)*/
          EdgeInsets.all(50),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).primaryColorLight,
      ),
    ),
    );
  }
}
