import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class AddATask with ChangeNotifier {
  final _myBox = Hive.box('tasks');

  //Might have to delete
  // final List<String> _list = [];
  //lol

  Box get task => _myBox;

  int get count => _myBox.length;

  // ignore: non_constant_identifier_names
  void addOneTask(String text) {
    _myBox.put('task', text);
    notifyListeners();
  }

  String readOneTask() {
    return _myBox.get('task', defaultValue: '');
  }

  void deleteOneTask() {
    _myBox.delete('task');
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
