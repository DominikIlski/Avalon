import 'package:flutter/material.dart';


import '../themes/button_themes.dart';
import '../themes/text_themes.dart';
import 'main_menu/main_menu.dart';
import 'new_game/new_game.dart';

///
class Routes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {'/': (context) => MainManu(),
      '/newGame' : (context) => NewGame(),
      '/joinGame' : (context) => Scaffold(body: Text('joinGame'),) //TODO: implementSecond Page
      },
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
