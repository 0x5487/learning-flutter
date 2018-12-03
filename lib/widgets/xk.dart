import 'package:flutter/material.dart';
import 'package:learning_flutter/widgets/chat.dart';

class XKTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("聊天")),
      body: Container(
        alignment: Alignment.bottomCenter,
        child: ChatWidget(),
      ),
    );
  }
}
