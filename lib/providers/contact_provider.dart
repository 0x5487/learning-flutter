import 'package:flutter/material.dart';
import 'package:learning_flutter/blocs/contact_bloc.dart';

class ContactProvider extends InheritedWidget {
  ContactProvider({Key key, Widget child}) : super(key: key, child: child);

  final ContactBloc contactBloc = ContactBloc();

  @override
  bool updateShouldNotify(ContactProvider oldWidget) =>
      (oldWidget.contactBloc != contactBloc);

  static ContactBloc of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(ContactProvider)
            as ContactProvider)
        .contactBloc;
  }
}
