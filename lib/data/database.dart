import 'package:hive_flutter/hive_flutter.dart';

class TodoDatabase{
  List toDoList = [];

  //reference box
  final _myBox = Hive.box('mybox');

  // 1st time ever opening this app
  void createInitialData(){
    toDoList = [
      ["Rate the app", false]
    ];
  }

  // load data from database
  void loadData(){
    toDoList = _myBox.get("TODOLIST");
  }

  // update data in database
  void updateData(){
    _myBox.put("TODOLIST", toDoList);
  }
}