import 'package:flutter/material.dart';
import './pages/home..dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wechat',
      home: HomePage(),
      theme: ThemeData(
        primaryColor: Colors.green,
      ),
    );
  }
}
