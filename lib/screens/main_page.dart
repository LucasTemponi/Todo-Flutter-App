import 'dart:html';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/to_do_input.dart';
import '../widgets/to_do_input.dart';
import '../widgets/to_do_list.dart';

class ToDoTask {
  final String title;
  bool isDone;
  ToDoTask({required this.title, this.isDone = false});

  void switchDone() {
    isDone = !isDone;
  } 
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<ToDoTask> _todoList = [];

  void _addTodo(String todo) {
    setState(() {
      _todoList.add(ToDoTask(title: todo));
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Teste do Lucas',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Teste do Lucas'),
          ),
          body: Column(
            children: [
              ToDoInput(
                title: 'Digite sua tarefa',
                onChange: _addTodo,
              ),
              ToDoList(todoList: _todoList),
            ],
          )),
    );
  }
}
