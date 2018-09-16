import 'package:flutter/material.dart';
import './chat_message.dart';

class ChatWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ChatState();
}

class _ChatState extends State<ChatWidget> {
  final TextEditingController textEditingController =
      new TextEditingController();
  final List<ChatMessage> _messages = <ChatMessage>[
    new ChatMessage("aaa"),
  ];

  void _handleSubmit(String text) {
    textEditingController.clear();
    ChatMessage chatMessage = new ChatMessage(text);
    setState(() {
      //used to rebuild our widget
      _messages.insert(0, chatMessage);
    });
  }

  Widget _textComposerWidget() {
    return new IconTheme(
      data: new IconThemeData(color: Colors.blue),
      child: new Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: new Row(
          children: <Widget>[
            new Container(
              child: new IconButton(icon: new Icon(Icons.add)),
            ),
            new Flexible(
              child: new TextField(
                decoration: new InputDecoration.collapsed(hintText: "輸入訊息"),
                controller: textEditingController,
                onSubmitted: _handleSubmit,
              ),
            ),
            new Container(
              //margin: const EdgeInsets.symmetric(horizontal: 8.0),
              child: new IconButton(
                icon: new Icon(Icons.send),
                onPressed: () => _handleSubmit(textEditingController.text),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Flexible(
            child: Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("assets/images/chat_background.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: new ListView.builder(
            padding: new EdgeInsets.all(8.0),
            reverse: true,
            itemBuilder: (_, int index) => _messages[index],
            itemCount: _messages.length,
          ),
        )),
        new Divider(
          height: 1.0,
        ),
        new Container(
          decoration: new BoxDecoration(
            color: Theme.of(context).cardColor,
          ),
          child: _textComposerWidget(),
        )
      ],
    );
  }
}
