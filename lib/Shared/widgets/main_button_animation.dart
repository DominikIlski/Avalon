import 'package:flutter/material.dart';
import '../../shared/widgets/main_button.dart';

///
class MainButtonAnimation extends StatefulWidget {
  ///
  final Duration _duration;
  final Function _visability;
  final VoidCallback _routeFunction;
  final String _buttonText;

  ///
  MainButtonAnimation(this._buttonText,this._duration,
   this._visability, this._routeFunction);

  @override
  _MainButtonAnimationState createState() => _MainButtonAnimationState();
}

class _MainButtonAnimationState extends State<MainButtonAnimation> {
  

  
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: widget._duration,
      child: AnimatedOpacity(
        opacity: widget._visability() as double,
        duration: widget._duration,
        child: MainButton(widget._buttonText, widget._routeFunction),
      ),
    );
  }
}
