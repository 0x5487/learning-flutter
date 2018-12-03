import 'package:flutter/material.dart';
import 'package:learning_flutter/providers/home_provider.dart';

class HomeTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final homeBloc = HomeProvider.of(context);

    return StreamBuilder<String>(
      stream: homeBloc.titleStream,
      initialData: homeBloc.title,
      builder: (content, snapshot) {
        return Text(snapshot.data);
      },
    );
  }
}
