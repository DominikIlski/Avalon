import 'package:flare_flutter/flare.dart';
import 'package:flare_dart/math/mat2d.dart';
import 'package:flare_flutter/flare_controller.dart';
import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flare_flutter/flare_controls.dart';

///public title
class Title extends StatelessWidget {
  static final _openingAnimation = 'OpeningAnimation';
  final FlareController _controller;
  ///
  Title(this._controller) ;
  

  @override
  Widget build(BuildContext context) {
    return FlareActor(
      'assets/animations/ragnarok_main1.flr',
      alignment: Alignment(0, -1),
      animation: _openingAnimation,
      snapToEnd: true,
      fit: BoxFit.fitWidth,
      controller: _controller,
    );
  }
}

class TitleController extends FlareController {
  ///
  VoidCallback buttonAnimation;
  var _animationStatut = true;
  var _duration = 0.0;
  final String _animation;
  ActorAnimation _actor;

  ///
  TitleController(this._animation, {@required this.buttonAnimation});

  @override
  void initialize(FlutterActorArtboard artBoard) {
    _actor = artBoard.getAnimation(_animation);
  }

  @override
  bool advance(FlutterActorArtboard artboard, double elapsed) {
    _duration += elapsed;
    if (_duration >= _actor.duration) {
      _actor.apply(_actor.duration, artboard, 1);
      return false;
    }

    if(_duration >= 2.5){
      if (_animationStatut) {
          buttonAnimation();
          _animationStatut = false;
        }
    }
    
    _duration %= _actor.duration;
    return true;
  }

  @override
  void setViewTransform(Mat2D viewTransform) {
    // TODO: implement setViewTransform
  }
}

