import 'package:flutter/material.dart';
import 'package:learning_flutter/wakanda/manager.dart';
import './chat_message.dart';

class ChatWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ChatState();
}

class _ChatState extends State<ChatWidget> {
  final TextEditingController textEditingController = TextEditingController();
  final List<ChatMessage> _messages = <ChatMessage>[
    ChatMessage("aaa"),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Flexible(
            child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/chat_background.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView.builder(
            padding: EdgeInsets.all(8.0),
            reverse: true,
            itemCount: _messages.length,
            itemBuilder: (_, int index) => _messages[index],
          ),
        )),
        Divider(
          height: 1.0,
        ),
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
          ),
          child: _textComposerWidget(),
        )
      ],
    );
  }

  void _handleSubmit(String text) {
    textEditingController.clear();
    ChatMessage chatMessage = ChatMessage(text);
    setState(() {
      //used to rebuild our widget
      _messages.insert(0, chatMessage);
    });
  }

  Widget _textComposerWidget() {
    return IconTheme(
      data: IconThemeData(color: Colors.blue),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: <Widget>[
            Container(
              child: IconButton(icon: Icon(Icons.add)),
            ),
            Flexible(
              child: TextField(
                decoration: InputDecoration.collapsed(hintText: "輸入訊息"),
                controller: textEditingController,
                onSubmitted: _handleSubmit,
              ),
            ),
            Container(
              //margin: const EdgeInsets.symmetric(horizontal: 8.0),
              child: IconButton(
                icon: Icon(Icons.send),
                onPressed: () => _handleSubmit(textEditingController.text),
              ),
            )
          ],
        ),
      ),
    );
  }
}
