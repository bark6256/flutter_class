import 'package:class_todo_v1/view/todo_list_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(title: Text('Todo List')),
          body: TodoListView(),
        ),
      ),
    );
  }
}

