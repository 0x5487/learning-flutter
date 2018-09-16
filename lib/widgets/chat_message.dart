import 'package:flutter/material.dart';

const String _name = "Jason Lee";

class ChatMessage extends StatelessWidget {
  String text;
  //for opotional params we use curly braces
  ChatMessage(msg) {
    text = msg;
  }
  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(
            margin: const EdgeInsets.only(right: 5.0),
            child: new CircleAvatar(
              maxRadius: 13.00,
              child: new Text(_name[0]),
            ),
          ),
          new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Container(
                color: Colors.transparent,
                child: new Container(
                    padding: new EdgeInsets.all(5.0),
                    decoration: new BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            new BorderRadius.all(Radius.circular(12.0))),
                    child: new Center(
                      child: new Text(
                        text,
                        style: new TextStyle(
                            //fontFamily: "Roboto",
                            //fontSize: 8.0,
                            ),
                      ),
                    )),
              ),
            ],
          )
        ],
      ),
    );
  }
}
