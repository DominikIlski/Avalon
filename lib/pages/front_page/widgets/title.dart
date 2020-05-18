import 'package:flare_flutter/flare.dart';
import 'package:flare_dart/math/mat2d.dart';
import 'package:flare_flutter/flare_controller.dart';
import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flare_flutter/flare_controls.dart';

///public title
class Title extends StatelessWidget {
  static final _openingAnimation = 'OpeningAnimation';
  static final _titleAnimation = 'Title';

  final _controls = TitleController(_openingAnimation, _titleAnimation);

  @override
  Widget build(BuildContext context) {
    return FlareActor(
      'assets/animations/ragnarok_main.flr',
      alignment: Alignment(0, -1),
      animation: _openingAnimation,
      snapToEnd: true,
      fit: BoxFit.fitWidth,
      controller: _controls,
    );
  }
}

class TitleController extends FlareController {
  ///
  final String _animation;
  final String _secondAnimation;

  var _duration = 0.0;

  ActorAnimation _actor;

  ///
  TitleController(this._animation, this._secondAnimation);

  @override
  void initialize(FlutterActorArtboard artBoard) {
    _actor = artBoard.getAnimation(_animation);
  }

  @override
  bool advance(FlutterActorArtboard artboard, double elapsed) {
    _duration += elapsed;
    if (_duration >= _actor.duration) {
      _actor.apply(_actor.duration, artboard, 1);
      //_actor = artboard.getAnimation(_secondAnimation);
      return false;
    }
    _duration %= _actor.duration;
    return true;
  }

  @override
  void setViewTransform(Mat2D viewTransform) {
    // TODO: implement setViewTransform
  }
}
