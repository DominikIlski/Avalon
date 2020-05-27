import 'package:avalon/themes/text_themes.dart';
import 'package:flutter/material.dart';

import 'button_themes.dart';


class AppTheme {

static ThemeData appTheme(BuildContext context) =>

ThemeData(
        
        brightness: Brightness.dark,
        primaryColor: Color(0xff212122),
        accentColor: Color(0xffF9A825),
        fontFamily: 'Norse',
        buttonTheme: ButtonThemes.mainButtonTheme(context),
        textTheme: TextThemes.textThemes(),
      );
}