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
    return Row(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(right: 5.0),
          child: CircleAvatar(
            maxRadius: 15.00,
            child: Text(_name[0]),
          ),
        ),
        Flexible(
          child: Container(
            padding: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(12.0))),
            child: Text(
              text,
            ),
          ),
        ),
      ],
    );
  }
}
