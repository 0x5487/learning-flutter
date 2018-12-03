import 'dart:async';

class HomeBloc {
  var _bottomNavigationBarIndex = 1;
  var _title = "聊天";
  var _titleController = StreamController<String>.broadcast();
  var _bottomNavigationBarIndexController = StreamController<int>.broadcast();

  String get title => _title;
  Stream<String> get titleStream => _titleController.stream;
  int get bottomNavigationBarIndex => _bottomNavigationBarIndex;
  Stream<int> get bottomNavigationBarIndexStream =>
      _bottomNavigationBarIndexController.stream;

  HomeBloc() {}

  void onTabTapped(int index) {
    print("tab: $index");

    switch (index) {
      case 0:
        _title = "通訊錄";
        break;
      case 1:
        _title = "聊天";
        break;
      case 2:
        _title = "設定";
        break;
      default:
        break;
    }

    _bottomNavigationBarIndex = index;
    _titleController.sink.add(_title);
    _bottomNavigationBarIndexController.sink.add(index);
  }
}
