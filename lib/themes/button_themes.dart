import 'package:flutter/material.dart';

///
class ButtonThemes {
  ///
  static ButtonThemeData mainButtonTheme(BuildContext context) =>
      ButtonThemeData(
        buttonColor: Color(0xff212122),
        minWidth: double.infinity,

        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40.0),
            side: BorderSide(color: Color(0xff212122))),
      );
}
