import 'package:flutter/material.dart';

class ToDoInput extends StatelessWidget {
  const ToDoInput({Key? key, required this.title, required this.onChange}) : super(key: key);
  final String title;
  final Function(String) onChange;
  
  @override
  Widget build(
    BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: title,
      ),
      onSubmitted: ((value) => {
        onChange(value),
      })
    );
  }
}
