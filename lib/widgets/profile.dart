import 'package:flutter/material.dart';

class MInfoVC extends StatefulWidget {
  @override
  _MInfoVCState createState() => _MInfoVCState();
}

class _MInfoVCState extends State<MInfoVC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我的信息"),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(top: 20.0),
            color: Colors.grey[200],
            child: Container(
              color: Colors.white,
              height: 80.0,
              child: ListTile(
                title: Text("头像"),
                trailing: Image.asset(
                  "assets/images/golang.png",
                  width: 45.0,
                  height: 45.0,
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 20.0),
            color: Colors.grey[200],
            child: Container(
              color: Colors.white,
              height: 45.0,
              child: ListTile(
                title: Text("名字"),
                trailing: Text("Jason"),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            height: 45.0,
            child: ListTile(
              title: Text("微信号"),
              trailing: Text("tony001"),
            ),
          ),
          Container(
            color: Colors.white,
            height: 45.0,
            child: ListTile(
              title: Text("我的二维码"),
              trailing: Icon(Icons.fullscreen),
            ),
          ),
          Container(
            color: Colors.white,
            height: 45.0,
            child: ListTile(
              title: Text("更多"),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 17.0,
              ),
            ),
          ),
          Container(
            color: Colors.white,
            height: 45.0,
            child: ListTile(
              title: Text("我的地址"),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 17.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
