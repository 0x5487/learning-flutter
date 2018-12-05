import 'dart:async';
import 'package:learning_flutter/wakanda/contact.dart';

class ContactBloc {
  List<Contact> _contacts;
  var _contactsController = StreamController<List<Contact>>.broadcast();

  // properties
  List<Contact> get contacts => _contacts;
  Stream<List<Contact>> get contactStream => _contactsController.stream;

  ContactBloc() {
    _contacts = List<Contact>();

    var c1 = Contact()
      ..id = 1
      ..firstName = "Angela"
      ..lastName = "Wang";
    _contacts.add(c1);

    var c2 = Contact()
      ..id = 2
      ..firstName = "成五"
      ..lastName = "金";
    _contacts.add(c2);
  }
}
