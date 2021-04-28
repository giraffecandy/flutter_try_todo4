import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_try_todo4/taskScreen.dart';
import 'package:flutter_try_todo4/taskViewModel.dart';
import 'package:provider/provider.dart';
import 'addTaskScreen.dart';

void main() {
  print('Welcome Yamatatsu Todo App !!!');
  runApp(
    ChangeNotifierProvider(
      create: (context) => TaskViewModel(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yamatatsu TODO',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      initialRoute: TaskScreen.id,
      routes: {
        TaskScreen.id: (context) => TaskScreen(),
        AddTaskScreen.id: (context) => AddTaskScreen(),
      },
    );
  }
}