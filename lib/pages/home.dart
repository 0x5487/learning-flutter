import 'package:flutter/material.dart';
import 'package:learning_flutter/providers/home_provider.dart';
import 'package:learning_flutter/widgets/home_bottom_navigation_bar.dart';
import 'package:learning_flutter/widgets/home_display.dart';
import 'package:learning_flutter/widgets/home_title.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomeProvider(
        child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              // title: Center(child: Text(_title)),
              title: HomeTitle(),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    print("do add");
                  },
                ),
              ],
            ),
            body: HomeDisplay(),
            bottomNavigationBar: HomeBottomNavigationBar()));
  }
}
