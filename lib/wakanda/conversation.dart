import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class Conversation {
  String id;
  String title;
  String lastContent;
  String date;
  int unreadCount;

  Conversation();
}
