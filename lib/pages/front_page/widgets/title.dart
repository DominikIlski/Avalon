import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

///public title
class Title extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
        FlareActor(
        'assets/animations/ragnarok_main1.flr',
        alignment: Alignment(0, -1),
        animation: 'OpeningAnimation',
        snapToEnd: true,
        
        fit: BoxFit.fitWidth
      
    );

    /*Text(
            'RAGNAROK',
            style: Theme.of(context).textTheme.headline1,
          )*/
    //margin: EdgeInsets.only(left: -40, right: -40),
  }
}
