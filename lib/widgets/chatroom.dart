import 'package:flutter/material.dart';
import 'package:learning_flutter/wakanda/manager.dart';
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
    return Scaffold(
        body: ListView(
      children: <Widget>[
        ListTile(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return XKTabBar();
              }));
            },
            leading: Image.asset(
              "assets/images/golang.png",
              width: 40.0,
              height: 40.0,
              fit: BoxFit.cover,
            ),
            title: Text("張學友歌迷會"),
            subtitle: Text("我能為您服務嗎?"),
            trailing: Column(
              children: <Widget>[
                Text("5:47 PM"),
              ],
            )),
        Divider(color: Colors.grey),
        ListTile(
            onTap: () {
              print("tap on 官方客服");
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return XKTabBar();
              }));
            },
            leading: Image.asset(
              "assets/images/golang.png",
              width: 40.0,
              height: 40.0,
              fit: BoxFit.cover,
            ),
            title: Text("官方客服"),
            subtitle: Text("我能為您服務嗎?"),
            trailing: Column(
              children: <Widget>[
                Text("9/15"),
                Container(
                  margin: EdgeInsets.only(top: 8.0),
                  padding: EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(Radius.circular(50.0))),
                  child: Text(
                    "5",
                    style: TextStyle(
                      color: Colors.white,
                      //fontFamily: "Roboto",
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ],
            )),
        Divider(color: Colors.grey),
        ListTile(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return XKTabBar();
            }));
          },
          leading: Image.asset(
            "assets/images/golang.png",
            width: 40.0,
            height: 40.0,
            fit: BoxFit.cover,
          ),
          title: Text("LebronJames"),
          subtitle: Text("We will take over this game"),
          trailing: Column(
            children: <Widget>[
              Text("9/15"),
              Container(
                  margin: EdgeInsets.only(top: 8.0),
                  padding: EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(Radius.circular(50.0))),
                  child: Text("99+",
                      style: TextStyle(
                        color: Colors.white,
                        //fontFamily: "Roboto",
                        fontSize: 12.0,
                      ))),
            ],
          ),
        ),
        Divider(color: Colors.grey),
      ],
    ));
  }
}
