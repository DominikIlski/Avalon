import 'package:flutter/material.dart';

import 'button_themes.dart';
import 'text_themes.dart';


///
class AppTheme {
///
static ThemeData appTheme(BuildContext context) =>

ThemeData(
        
        brightness: Brightness.dark,
        primaryColor: Color(0xff212122),
        accentColor: Color(0xffF9A825),
        primaryColorLight: Color(0xff757575),
        fontFamily: 'Norse',
        buttonTheme: ButtonThemes.mainButtonTheme(context),
        textTheme: TextThemes.textThemes(),            
      );
}