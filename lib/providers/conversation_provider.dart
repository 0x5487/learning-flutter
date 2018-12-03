import 'package:flutter/material.dart';
import 'package:learning_flutter/blocs/conversation_bloc.dart';

class ConversationProvider extends InheritedWidget {
  ConversationProvider({Key key, Widget child}) : super(key: key, child: child);

  final ConversationBloc conversationBloc = ConversationBloc();

  @override
  bool updateShouldNotify(ConversationProvider oldWidget) =>
      (oldWidget.conversationBloc != conversationBloc);

  static ConversationBloc of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(ConversationProvider)
            as ConversationProvider)
        .conversationBloc;
  }
}
