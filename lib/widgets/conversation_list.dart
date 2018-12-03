import 'package:flutter/material.dart';
import 'package:learning_flutter/providers/conversation_provider.dart';
import 'package:learning_flutter/wakanda/conversation.dart';
import 'package:learning_flutter/widgets/xk.dart';

class ConversationList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final conversationBloc = ConversationProvider.of(context);

    return StreamBuilder<List<Conversation>>(
        stream: conversationBloc.conversationStream,
        initialData: conversationBloc.conversations,
        builder:
            (BuildContext content, AsyncSnapshot<List<Conversation>> snapshot) {
          return ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: snapshot.data.length,
              itemBuilder: (context, index) {
                var source = snapshot.data[index];

                return Column(children: <Widget>[
                  ListTile(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return XKTabBar();
                        }));
                      },
                      leading: Image.asset(
                        "assets/images/golang.png",
                        width: 40.0,
                        height: 40.0,
                        fit: BoxFit.cover,
                      ),
                      title: Text(source.title),
                      subtitle: Text(source.lastContent),
                      trailing: Column(
                        children: <Widget>[
                          Text(source.date),
                        ],
                      )),
                  Divider(color: Colors.grey),
                ]);
              });
        });
  }
}
