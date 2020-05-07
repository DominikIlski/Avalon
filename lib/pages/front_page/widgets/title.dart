import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

///public title
class Title extends StatelessWidget {
  static final String _titlePath = 'assets/title_main.svg';
  final Widget _title = SvgPicture.asset(
    _titlePath,
    alignment: Alignment.center,
    fit: BoxFit.fill,
    placeholderBuilder: (context) => CircularProgressIndicator(),
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Align(
        alignment: Alignment(0, -1),
        child: _title
      ),
      margin: EdgeInsets.only(top: 100, left: 10, right: 10),
      width: double.infinity,
    );
  }
}
