import 'package:avalon/shared/Models/Charakters/Charakter.dart';
import 'package:flutter/material.dart';

///
class PlayerCount extends StatefulWidget {
  Function(int) charakters;

  PlayerCount(this.charakters);

  @override
  _PlayerCountState createState() => _PlayerCountState();
}

class _PlayerCountState extends State<PlayerCount> {
  final myController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff212122),
      child: Stack(
        fit: StackFit.passthrough,
        children: <Widget>[
          Align(
            child: PlayerCountRect(5),
            alignment: Alignment(-0.90, -0.80),
          ),
          Align(
            child: PlayerCountRect(6),
            alignment: Alignment(0.90, -0.80),
          ),
          Align(
            child: PlayerCountRect(7),
            alignment: Alignment(-0.90, 0),
          ),
          Align(
            child: PlayerCountRect(8),
            alignment: Alignment(0.90, 0),
          ),
          Align(
            child: PlayerCountRect(9),
            alignment: Alignment(-0.90, 0.80),
          ),
          Align(
            child: PlayerCountRect(10),
            alignment: Alignment(0.90, 0.80),
          ),
        ],
      ),
    );
  }
}

class PlayerCountRect extends StatelessWidget {
  ///
  final int playerCount;

  ///
  PlayerCountRect(this.playerCount);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        Container(
          width: 180,
          height: 180,
          
          padding: EdgeInsets.only(top: 10, right: 20, left: 20, bottom: 10),
          /*decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.all(Radius.circular(20)),
            shape: BoxShape.rectangle,
          ),
          child: FittedBox(
              fit: BoxFit.contain,
              child: Container(
                margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                  "$playerCount",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              )
              ),*/
          child: RaisedButton(
            
            color: Color(0xff757575),
              child: FittedBox(
                
                  fit: BoxFit.contain,
                  child: Container(
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    child: Text(
                      "$playerCount",
                      /*style: Theme.of(context).textTheme.bodyText1,*/
                      style: TextStyle(fontSize: 125,
                       fontWeight: FontWeight.bold),
                    ),
                  )),
              onPressed: () => print('')
              ),
        )
      ],
    );
  }
}
