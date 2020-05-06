import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// public
class FrontPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}

/// public
class HomePage extends StatelessWidget {
  static final String _titlePath = 'assets/title.svg';
  final Widget _title = SvgPicture.asset(
    _titlePath,
    alignment: Alignment.center,
    fit: BoxFit.fill,
    placeholderBuilder: (context) => CircularProgressIndicator(),
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: <Widget>[
            Container(
              child: _title,
              margin: EdgeInsets.only(top: 100, left: 10, right: 10),
              width: double.infinity,
            )
          ],
        ),
      ),
    );
  }
}
