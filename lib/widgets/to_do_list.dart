import 'package:flutter/material.dart';
import '../screens/main_page.dart';

class ToDoList extends StatefulWidget {
  final List<ToDoTask> todoList;
  const ToDoList({Key? key, required this.todoList}) : super(key: key);

  @override
  ToDoListState createState() => ToDoListState();
}

class ToDoListState extends State<ToDoList> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ...widget.todoList.map((todo) {
        return Row(
          children: <Widget>[
            Checkbox(
                value: todo.isDone, onChanged: (value) => setState(()=> todo.isDone = !todo.isDone)),
            Text(
              todo.title,
              style: TextStyle(
                decoration: todo.isDone ? TextDecoration.lineThrough : null,
                color: todo.isDone ? Colors.grey : null,
              ),
            ),
          ],
        );
      }).toList(),
    ]);
  }
}
