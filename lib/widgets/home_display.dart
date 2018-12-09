import 'package:flutter/material.dart';
import 'package:learning_flutter/pages/setting.dart';
import 'package:learning_flutter/providers/contact_provider.dart';
import 'package:learning_flutter/providers/conversation_provider.dart';
import 'package:learning_flutter/providers/home_provider.dart';
import 'package:learning_flutter/widgets/contact_list.dart';
import 'package:learning_flutter/widgets/conversation_list.dart';

class HomeDisplay extends StatelessWidget {
  List<Widget> _widgets;

  HomeDisplay() {
    _widgets = List<Widget>();
    _widgets.add(ContactProvider(child: ContactList()));
    _widgets.add(ConversationProvider(child: ConversationList()));
    _widgets.add(SettingPage());
  }

  @override
  Widget build(BuildContext context) {
    final homeBloc = HomeProvider.of(context);

    return StreamBuilder<int>(
      stream: homeBloc.bottomNavigationBarIndexStream,
      initialData: homeBloc.bottomNavigationBarIndex,
      builder: (BuildContext content, AsyncSnapshot<int> snapshot) {
        return _widgets[snapshot.data];
      },
    );
  }
}
