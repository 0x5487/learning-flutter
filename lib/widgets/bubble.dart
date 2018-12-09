import 'package:flutter/material.dart';

class Bubble extends StatelessWidget {
  final String message, time;
  final delivered, isMe;

  Bubble({this.message, this.time, this.delivered, this.isMe});

  @override
  Widget build(BuildContext context) {
    Widget row = null;
    if (this.isMe) {
      row = _buildMe(context);
    } else {
      row = _buildFriend(context);
    }

    return Container(
      margin: EdgeInsets.only(top: 5, bottom: 5),
      child: row,
    );
  }

  Widget _buildFriend(BuildContext context) {
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
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Flexible(
                      child: Text(
                    " Jason Lee",
                    style: DefaultTextStyle.of(context)
                        .style
                        .apply(fontSizeFactor: 1),
                  ))
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Flexible(
                      child: Container(
                    margin: const EdgeInsets.all(3.0),
                    padding: const EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            blurRadius: .5,
                            spreadRadius: 1.0,
                            color: Colors.black.withOpacity(.12))
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10.0),
                        bottomLeft: Radius.circular(15.0),
                        bottomRight: Radius.circular(10.0),
                      ),
                    ),
                    child: Text(message),
                  )),
                  Text(time,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black38,
                        fontSize: 12.0,
                      )),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildMe(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Text(time,
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.black38,
              fontSize: 12.0,
            )),
        Flexible(
            child: Container(
          margin: const EdgeInsets.all(3.0),
          padding: const EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  blurRadius: .5,
                  spreadRadius: 1.0,
                  color: Colors.black.withOpacity(.12))
            ],
            color: Colors.blue,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.0),
              bottomLeft: Radius.circular(10.0),
              bottomRight: Radius.circular(15.0),
            ),
          ),
          child: Text(message,
              style: TextStyle(
                color: Colors.white,
              )),
        )),
      ],
    );
  }
}
