import 'package:flutter/material.dart';
import 'package:learning_flutter/widgets/chat.dart';
import 'package:learning_flutter/widgets/chatroom.dart';
import 'package:learning_flutter/widgets/discovery.dart';
import 'package:learning_flutter/widgets/me.dart';
import '../widgets/place_holder.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  String _title = "聊天";
  int _currentIndex = 0;

  List<Widget> _children;

  _HomeState() {
    _children = new List<Widget>();
    _children.add(ChatRoomWidget());
    _children.add(DiscoveryWidget());
    _children.add(MeWidget());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(_title)),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.add),
            onPressed: () {
              print("do add");
            },
          ),
        ],
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.chat),
            title: new Text('聊天'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.contacts),
            title: new Text('通訊錄'),
          ),
          BottomNavigationBarItem(icon: Icon(Icons.settings), title: Text('設定'))
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      switch (index) {
        case 0:
          _title = "聊天";
          break;
        case 1:
          _title = "通訊錄";
          break;
        case 2:
          _title = "設定";
          break;
        default:
          break;
      }

      _currentIndex = index;
    });
  }
}
