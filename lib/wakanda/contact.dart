import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class Contact {
  int id;
  String firstName;
  String lastName;
  String createdAt;

  Contact();
}
