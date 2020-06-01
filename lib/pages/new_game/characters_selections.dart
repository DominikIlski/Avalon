
import 'package:avalon/shared/Models/Charakters/Aesirs/Aesir.dart';
import 'package:avalon/shared/Models/Charakters/Charakter.dart';
import 'package:avalon/shared/Models/Charakters/Jotuns/Jotun.dart';
import 'package:flutter/material.dart';

///
class CharacterSelection extends StatefulWidget {
  @override
  _CharacterSelectionState createState() => _CharacterSelectionState();
}

class _CharacterSelectionState extends State<CharacterSelection> {


  var ch1 = Aesir();
  var ch2 = Jotun();
  var list = <Character>[];
  
  void foo () {
    list.add(ch1);

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: Container(
      margin: /*EdgeInsets.only(top: 50, bottom: 50, left: 50, right: 50)*/
          EdgeInsets.all(50),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).primaryColorLight,
      ),
    ),
    );
  }
}
