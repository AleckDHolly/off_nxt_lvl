import 'package:flutter/material.dart';

class AddATask with ChangeNotifier {
  final List<String> _list = [];

  List<String> get task => _list;

  int get count => _list.length;

  // ignore: non_constant_identifier_names
  void addOneTask(String text) {
    _list.add(text);
    notifyListeners();
  }
}

class AddATask2 with ChangeNotifier {
  final List<String> _list = [];

  List<String> get task => _list;

  int get count => _list.length;

  // ignore: non_constant_identifier_names
  void addOneTask(String text) {
    _list.add(text);
    notifyListeners();
  }
}
