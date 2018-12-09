import 'package:flutter/material.dart';
import 'package:learning_flutter/widgets/bubble.dart';

class BubblePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade50,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: .9,
        title: Text(
          'Putra',
          style: TextStyle(color: Colors.green),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Bubble(
              message: 'Hi',
              time: '12:00',
              delivered: true,
              isMe: false,
            ),
            Container(
              child: Text(
                "今天",
                style: new TextStyle(
                  background: Paint()..color = Colors.grey,
                  color: Colors.white,
                  fontSize: 12.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
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
          ],
        ),
      ),
    );
  }
}
