import 'package:flutter/material.dart';
import 'package:learning_flutter/pages/bubble.dart';
import 'package:learning_flutter/pages/login.dart';
import 'package:learning_flutter/pages/home.dart';
import 'package:learning_flutter/wakanda/manager.dart';
import 'package:flutter/rendering.dart';

void main() {
  debugPaintSizeEnabled = true;
  runApp(MyApp());
}

WakandaManager _wakandaManager = WakandaManager();

class MyApp extends StatelessWidget {
  MyApp() {
    //_wakandaManager.open();
    // sendHello();
    //printHello();
  }

  Future printHello() async {
    int num = 0;
    while (true) {
      num++;
      var content = "print Hello world $num";
      print(content);
      await Future.delayed(Duration(milliseconds: 1000));
    }
  }

  Future sendHello() async {
    int num = 0;

    while (true) {
      var content = "Hello world $num";
      print(content);
      _wakandaManager.SendText(content);
      num++;
      await Future.delayed(Duration(milliseconds: 1000));
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wakanda',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/bubble': (context) => BubblePage(),
      },
    );
  }
}
