import 'package:flutter/material.dart';
import 'package:learning_flutter/pages/login.dart';
import 'package:learning_flutter/pages/home.dart';
import 'package:learning_flutter/wakanda/manager.dart';

void main() => runApp(MyApp());
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
    //_wakandaManager.open();
    //sendHello();
    return MaterialApp(
      title: 'Wakanda',
      theme: ThemeData(
        primaryColor: Colors.green,
      ),
      // Start the app with the "/" named route. In our case, the app will start
      // on the FirstScreen Widget
      initialRoute: '/',
      routes: {
        // When we navigate to the "/" route, build the FirstScreen Widget
        '/': (context) => LoginPage(),
        // When we navigate to the "/second" route, build the SecondScreen Widget
        '/home': (context) => HomePage(),
      },
    );
  }
}
