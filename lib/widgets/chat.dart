import 'package:flutter/material.dart';
import 'package:learning_flutter/wakanda/manager.dart';
import 'package:learning_flutter/widgets/bubble.dart';

class ChatWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ChatState();
}

class _ChatState extends State<ChatWidget> {
  final TextEditingController textEditingController = TextEditingController();
  final List<Bubble> _messages = <Bubble>[
    Bubble(
      message:
          '52歲、曾執導電影「艋舺」大賣的知名導演鈕承澤（豆導）驚傳性侵女性工作人員？本報掌握獨家消息，指鈕承澤在拍攝電影「跑馬」（暫定）期間疑性侵女性工作人員（以A女代稱）。據悉該女5日下午已在友人陪同下赴婦幼警察局報案、做筆錄，消息曝光後，記者也循線找到女友人，對方透露A女此刻身心重創，已完全無法工作。',
      time: '12:01',
      delivered: true,
      isMe: false,
    ),
    Bubble(
      message:
          '友人表示A女當下因擔心豆導不開心於是選擇獨自留下，一開始，兩人還維持正常聊天，沒多久，鈕承澤一時「性」起，先是靠近、撫摸她的頭和肩膀，隨即將她撲倒在沙發，強行狂吻、脫衣服甚至襲胸等，過程極度粗暴。',
      time: '12:00',
      delivered: true,
      isMe: true,
    ),
    Bubble(
      message: 'I\'ve told you so dude!',
      time: '12:00',
      delivered: true,
      isMe: false,
    ),
    Bubble(
      message: 'How are you today',
      time: '12:03Am',
      delivered: true,
      isMe: true,
    ),
    Bubble(
      message: 'I miss you so much',
      time: '12:00',
      delivered: true,
      isMe: true,
    ),
    Bubble(
      message: 'I\'ve told you so dude!',
      time: '12:00',
      delivered: true,
      isMe: false,
    ),
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
    var message = Bubble(
      message: text,
      time: '12:01',
      delivered: true,
      isMe: true,
    );
    setState(() {
      //used to rebuild our widget
      _messages.insert(0, message);
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
