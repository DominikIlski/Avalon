import 'package:avalon/themes/app_theme.dart';
import 'package:flutter/material.dart';
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
      theme: AppTheme.appTheme(context)
    );
  }
}
