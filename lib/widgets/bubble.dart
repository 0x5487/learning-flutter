import 'package:flutter/material.dart';

class Bubble extends StatelessWidget {
  Bubble({this.message, this.time, this.delivered, this.isMe});
  final String message, time;
  final delivered, isMe;
  @override
  Widget build(BuildContext context) {
    final bg = isMe ? Colors.blue : Colors.white;
    final align = isMe ? CrossAxisAlignment.start : CrossAxisAlignment.end;
    final icon = delivered ? Icons.done_all : Icons.done;
    final radius = isMe
        ? BorderRadius.only(
            topLeft: Radius.circular(10.0),
            bottomLeft: Radius.circular(10.0),
            bottomRight: Radius.circular(15.0),
          )
        : BorderRadius.only(
            topRight: Radius.circular(10.0),
            bottomLeft: Radius.circular(15.0),
            bottomRight: Radius.circular(10.0),
          );
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(right: 5.0),
          child: CircleAvatar(
            maxRadius: 18.00,
            child: Text("JL"),
          ),
        ),
        Flexible(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              " Jason Lee",
              style:
                  DefaultTextStyle.of(context).style.apply(fontSizeFactor: 1),
            ),
            Container(
              margin: const EdgeInsets.all(3.0),
              padding: const EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      blurRadius: .5,
                      spreadRadius: 1.0,
                      color: Colors.black.withOpacity(.12))
                ],
                color: bg,
                borderRadius: radius,
              ),
              child: Text(message),
            ),
          ],
        ))
      ],
    );
  }
}
