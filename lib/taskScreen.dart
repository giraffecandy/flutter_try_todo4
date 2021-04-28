import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_try_todo4/taskListView.dart';

import 'addTaskScreen.dart';

class TaskScreen extends StatelessWidget {
  static String id = 'task_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task List'),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, AddTaskScreen.id);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.add),
            ),
          ),
        ],
      ),
      body: Container(
        child: TaskListView(),
      ),
    );
  }
}