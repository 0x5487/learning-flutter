import 'package:flutter/material.dart';
import 'package:learning_flutter/providers/home_provider.dart';

class HomeBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final homeBloc = HomeProvider.of(context);

    return StreamBuilder<int>(
      stream: homeBloc.bottomNavigationBarIndexStream,
      initialData: homeBloc.bottomNavigationBarIndex,
      builder: (BuildContext content, AsyncSnapshot<int> snapshot) {
        return BottomNavigationBar(
          onTap: (index) => homeBloc.onTabTapped(index),
          currentIndex: snapshot.data,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.contacts),
              title: Text('通訊錄'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              title: Text('聊天'),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), title: Text('設定'))
          ],
        );
      },
    );
  }
}
