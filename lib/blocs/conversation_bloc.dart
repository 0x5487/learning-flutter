import 'dart:async';

import 'package:learning_flutter/wakanda/conversation.dart';

class ConversationBloc {
  List<Conversation> _conversations;
  var _conversationController =
      StreamController<List<Conversation>>.broadcast();

  // properties
  List<Conversation> get conversations => _conversations;
  Stream<List<Conversation>> get conversationStream =>
      _conversationController.stream;

  ConversationBloc() {
    _conversations = List<Conversation>();

    var c1 = Conversation()
      ..title = "張學友1"
      ..lastContent =
          "金融巨鱷索羅斯給投資人的警語:人之所以犯錯誤，不是因為他們不懂，而是因為他們自己以為什麼都懂！財信傳媒董事長謝金河2日在臉書貼文指出，這句話原本是說給投資人聽的，但現在台灣大選過後，好像是在說給民進黨執政團隊聽的，尤其是蔡總統"
      ..date = "5:47 PM"
      ..unreadCount = 0;
    _conversations.add(c1);

    var c2 = Conversation()
      ..title = "張學友2"
      ..lastContent = "我能為您服務嗎?"
      ..date = "5:47 PM"
      ..unreadCount = 3;
    _conversations.add(c2);

    var c3 = Conversation()
      ..title = "張學友3"
      ..lastContent = "我能為您服務嗎?"
      ..date = "5:47 PM"
      ..unreadCount = 0;
    _conversations.add(c3);

    var c4 = Conversation()
      ..title = "張學友4"
      ..lastContent = "我能為您服務嗎?"
      ..date = "5:47 PM"
      ..unreadCount = 0;
    _conversations.add(c4);

    var c5 = Conversation()
      ..title = "張學友5"
      ..lastContent = "我能為您服務嗎?"
      ..date = "5:47 PM"
      ..unreadCount = 5;
    _conversations.add(c5);

    var c6 = Conversation()
      ..title = "張學友6"
      ..lastContent = "我能為您服務嗎?"
      ..date = "5:47 PM"
      ..unreadCount = 5;
    _conversations.add(c6);

    var c7 = Conversation()
      ..title = "張學友7"
      ..lastContent = "我能為您服務嗎?"
      ..date = "5:47 PM"
      ..unreadCount = 0;
    _conversations.add(c7);

    var c8 = Conversation()
      ..title = "張學友8"
      ..lastContent = "我能為您服務嗎?"
      ..date = "5:47 PM"
      ..unreadCount = 0;
    _conversations.add(c8);
  }
}
