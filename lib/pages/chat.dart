import 'package:flutter/material.dart';
import 'package:learning_flutter/widgets/chat.dart';

class ChatPage extends StatelessWidget {
  String _title;

  ChatPage(this._title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.bottomCenter,
        child: ChatWidget(),
      ),
    );
  }
}
