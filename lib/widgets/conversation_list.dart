import 'package:flutter/material.dart';
import 'package:learning_flutter/pages/chat.dart';
import 'package:learning_flutter/providers/conversation_provider.dart';
import 'package:learning_flutter/wakanda/conversation.dart';

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
              key: PageStorageKey<String>("conversation_listview"),
              scrollDirection: Axis.vertical,
              itemCount: snapshot.data.length,
              itemBuilder: (context, index) {
                var source = snapshot.data[index];

                return Column(children: <Widget>[
                  ListTile(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return ChatPage(source.title);
                        }));
                      },
                      leading: Image.asset(
                        "assets/images/golang.png",
                        width: 40.0,
                        height: 40.0,
                        fit: BoxFit.cover,
                      ),
                      title: Text(source.title),
                      subtitle: Text(
                        source.lastContent,
                        overflow: TextOverflow.ellipsis,
                      ),
                      trailing: Column(
                        children: _buildTrailing(source),
                      )),
                  Divider(color: Colors.grey),
                ]);
              });
        });
  }

  List<Widget> _buildTrailing(Conversation source) {
    var widgets = <Widget>[
      Text(source.date),
    ];

    if (source.unreadCount > 0) {
      var unreadContainer = Container(
        margin: EdgeInsets.only(top: 8.0),
        padding: EdgeInsets.all(4.0),
        decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.all(Radius.circular(50.0))),
        child: Text(
          "5",
          style: TextStyle(
            color: Colors.white,
            //fontFamily: "Roboto",
            fontSize: 12.0,
          ),
        ),
      );

      widgets.add(unreadContainer);
    }
    return widgets;
  }
}
