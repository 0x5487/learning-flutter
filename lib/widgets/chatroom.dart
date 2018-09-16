import 'package:flutter/material.dart';
import 'package:learning_flutter/widgets/chat.dart';
import 'package:learning_flutter/widgets/xk.dart';
import './chat_message.dart';

class ChatRoomWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoomWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        body: new ListView(
      children: <Widget>[
        new ListTile(
            onTap: () {
              Navigator.of(context)
                  .push(new MaterialPageRoute(builder: (context) {
                return new XKTabBar();
              }));
            },
            leading: new Image.asset(
              "assets/images/golang.png",
              width: 40.0,
              height: 40.0,
              fit: BoxFit.cover,
            ),
            title: new Text("張學友歌迷會"),
            subtitle: new Text("我能為您服務嗎?"),
            trailing: new Column(
              children: <Widget>[
                new Text("5:47 PM"),
              ],
            )),
        new Divider(color: Colors.grey),
        new ListTile(
            onTap: () {
              print("tap on 官方客服");
              Navigator.of(context)
                  .push(new MaterialPageRoute(builder: (context) {
                return new XKTabBar();
              }));
            },
            leading: new Image.asset(
              "assets/images/golang.png",
              width: 40.0,
              height: 40.0,
              fit: BoxFit.cover,
            ),
            title: new Text("官方客服"),
            subtitle: new Text("我能為您服務嗎?"),
            trailing: new Column(
              children: <Widget>[
                new Text("9/15"),
                new Container(
                  margin: new EdgeInsets.only(top: 8.0),
                  padding: new EdgeInsets.all(4.0),
                  decoration: new BoxDecoration(
                      color: Colors.green,
                      borderRadius:
                          new BorderRadius.all(Radius.circular(50.0))),
                  child: new Text(
                    "5",
                    style: new TextStyle(
                      color: Colors.white,
                      //fontFamily: "Roboto",
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ],
            )),
        new Divider(color: Colors.grey),
        new ListTile(
          onTap: () {
            Navigator.of(context)
                .push(new MaterialPageRoute(builder: (context) {
              return new XKTabBar();
            }));
          },
          leading: new Image.asset(
            "assets/images/golang.png",
            width: 40.0,
            height: 40.0,
            fit: BoxFit.cover,
          ),
          title: new Text("LebronJames"),
          subtitle: new Text("We will take over this game"),
          trailing: new Column(
            children: <Widget>[
              new Text("9/15"),
              new Container(
                  margin: new EdgeInsets.only(top: 8.0),
                  padding: new EdgeInsets.all(4.0),
                  decoration: new BoxDecoration(
                      color: Colors.green,
                      borderRadius:
                          new BorderRadius.all(Radius.circular(50.0))),
                  child: new Text("996",
                      style: new TextStyle(
                        color: Colors.white,
                        //fontFamily: "Roboto",
                        fontSize: 12.0,
                      ))),
            ],
          ),
        ),
        new Divider(color: Colors.grey),
      ],
    ));
  }
}
