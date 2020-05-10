import 'package:flutter/material.dart';

///public title
class Title extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Align(
          alignment: Alignment(0, -0.8),
          child: Text(
            'RAGNAROK',
            style: Theme.of(context).textTheme.headline1,
          )),
      //margin: EdgeInsets.only(top: 70, left: 10, right: 10),
      width: double.infinity,
    );
  }
}
