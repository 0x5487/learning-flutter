import 'package:flutter/material.dart';

class DiscoveryWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DiscoveryState();
}

class _DiscoveryState extends State<DiscoveryWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: ListView(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.only(top: 20.0),
          child: Container(
            height: 50.0,
            child: ListTile(
              leading: Icon(Icons.camera),
              title: Text("朋友圈"),
            ),
            color: Colors.white,
          ),
          color: Colors.grey[200],
        ),
        Container(
          padding: const EdgeInsets.only(top: 20.0),
          child: Container(
            height: 50.0,
            child: ListTile(
              leading: Icon(Icons.crop_free),
              title: Text("扫一扫"),
            ),
            color: Colors.white,
          ),
          color: Colors.grey[200],
        ),
        Container(
          padding: const EdgeInsets.only(top: 20.0),
          child: Container(
            height: 50.0,
            child: ListTile(
              leading: Icon(Icons.star),
              title: Text("看一看"),
            ),
            color: Colors.white,
          ),
          color: Colors.grey[200],
        ),
        Container(
          child: ListTile(
            leading: Icon(Icons.search),
            title: Text("搜一搜"),
          ),
          color: Colors.white,
          height: 50.0,
        ),
        Container(
          padding: const EdgeInsets.only(top: 20.0),
          child: Container(
            child: ListTile(
              leading: Icon(Icons.people),
              title: Text("附近的人"),
            ),
            color: Colors.white,
            height: 50.0,
          ),
          color: Colors.grey[200],
        ),
        Container(
          child: ListTile(
            leading: Icon(Icons.hourglass_empty),
            title: Text("漂流瓶"),
          ),
          color: Colors.white,
          height: 50.0,
        ),
        Container(
          padding: const EdgeInsets.only(top: 20.0),
          child: Container(
            child: ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text("购物"),
            ),
            color: Colors.white,
            height: 50.0,
          ),
          color: Colors.grey[200],
        ),
        Container(
          child: ListTile(
            leading: Icon(Icons.games),
            title: Text("游戏"),
          ),
          color: Colors.white,
          height: 50.0,
        ),
        Container(
          padding: const EdgeInsets.only(top: 20.0),
          child: Container(
            child: ListTile(
              leading: Icon(Icons.apps),
              title: Text("小程序"),
            ),
            color: Colors.white,
            height: 50.0,
          ),
          color: Colors.grey[200],
        ),
      ],
    ));
  }
}
