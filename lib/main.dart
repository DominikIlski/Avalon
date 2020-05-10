import 'package:flutter/material.dart';
import 'pages/front_page/front_page.dart';

import 'themes/button_themes.dart';
import 'themes/text_themes.dart';

void main() {
  runApp(Main());
}

///
class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FrontPage(),
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Color(0xff212122),
        accentColor: Color(0xffF9A825),
        fontFamily: 'Norse',
        buttonTheme: ButtonThemes.mainButtonTheme(context),
        textTheme: TextThemes.textThemes(),
      ),
    );
  }
}
