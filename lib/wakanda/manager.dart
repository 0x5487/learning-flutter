import 'dart:convert';

import 'package:learning_flutter/wakanda/command.dart';
import 'package:learning_flutter/wakanda/message.dart';
import 'package:web_socket_channel/io.dart';

class WakandaManager {
  IOWebSocketChannel channel;

  WakandaManager() {}

  Future open() async {
    print("open ws");
    try {
      channel = new IOWebSocketChannel.connect(
          "ws://10.200.3.2:19999/ws?token=4d96f463-dc14-44f0-af4f-c284e15c89cc");

      channel.stream.listen((message) {
        print("received $message");
      }, onError: (error, StackTrace stackTrace) {
        // error handling
        print("err $error");
      }, onDone: () async {
        // communication has been closed
        var msg = channel.closeReason;
        var code = channel.closeCode;
        print("close done: msg=$msg, code=$code");
        // try to reconnect
        await new Future.delayed(const Duration(seconds: 1), () => open());
      });

      print("opened");
    } catch (e) {
      print('Caught error: $e');
    }
  }

  IOWebSocketChannel get WSChannel {
    return channel;
  }

  void OnMessage(message) {
    print("received $message");
  }

  void SendText(String content) {
    var msg = new Message();
    msg.seq_id = 12345678;
    msg.content = content;
    msg.type = 2;
    msg.group_id = "2f592803-5866-474f-a688-a4fa5a58dda9";

    var cmd = new Command();
    cmd.op = "MSG";
    cmd.data = msg;

    var jsonCmd = json.encode(cmd);
    channel.sink.add(jsonCmd);
  }
}
