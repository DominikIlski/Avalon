import 'package:flutter/material.dart';

///
class PlayerCount extends StatelessWidget {
  ///
  final Function(int) _CharactersCountChange;

  ///
  PlayerCount(this._CharactersCountChange);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: Stack(
        fit: StackFit.passthrough,
        children: <Widget>[
          Align(
            child: _PlayerCountRect(5, _CharactersCountChange),
            alignment: Alignment(-0.90, -0.80),
          ),
          Align(
            child: _PlayerCountRect(6, _CharactersCountChange),
            alignment: Alignment(0.90, -0.80),
          ),
          Align(
            child: _PlayerCountRect(7, _CharactersCountChange),
            alignment: Alignment(-0.90, 0),
          ),
          Align(
            child: _PlayerCountRect(8, _CharactersCountChange),
            alignment: Alignment(0.90, 0),
          ),
          Align(
            child: _PlayerCountRect(9, _CharactersCountChange),
            alignment: Alignment(-0.90, 0.80),
          ),
          Align(
            child: _PlayerCountRect(10, _CharactersCountChange),
            alignment: Alignment(0.90, 0.80),
          ),
        ],
      ),
    );
  }
}

///
class _PlayerCountRect extends StatelessWidget {
  ///
  final int playerCount;
  Function(int) CharactersCountChange;

  ///
  _PlayerCountRect(this.playerCount, this.CharactersCountChange);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        Container(
          width: 170,
          height: 170,
          padding: EdgeInsets.only(top: 10, right: 20, left: 20, bottom: 10),
          child: RaisedButton(
              color: Theme.of(context).primaryColorLight,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: FittedBox(
                  fit: BoxFit.contain,
                  child: Container(
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    child: Text(
                      "$playerCount",
                      style:
                          TextStyle(fontSize: 125, fontWeight: FontWeight.bold),
                    ),
                  )),
              onPressed: () => CharactersCountChange(playerCount)),
        )
      ],
    );
  }
}
