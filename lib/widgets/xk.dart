import 'package:flutter/material.dart';
import 'package:learning_flutter/widgets/chat.dart';

class XKTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("聊天")),
      body: new Container(
        alignment: Alignment.bottomCenter,
        child: new ChatWidget(),
      ),
    );
  }
}
