import 'package:flutter/material.dart';
import 'package:learning_flutter/widgets/chat.dart';
import 'package:learning_flutter/widgets/chatroom.dart';
import 'package:learning_flutter/widgets/discovery.dart';
import 'package:learning_flutter/widgets/me.dart';
import '../widgets/place_holder.dart';

class HomePage extends StatefulWidget {
  static String tag = 'home-page';

  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  String _title = "聊天";
  int _currentIndex = 1;

  List<Widget> _children;

  _HomeState() {
    _children = List<Widget>();
    _children.add(DiscoveryWidget());
    _children.add(ChatRoomWidget());
    _children.add(MeWidget());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        // title: Center(child: Text(_title)),
        title: Text(_title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
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
            icon: Icon(Icons.contacts),
            title: Text('通訊錄'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            title: Text('聊天'),
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
          _title = "通訊錄";
          break;
        case 1:
          _title = "聊天";
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
