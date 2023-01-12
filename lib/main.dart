import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(ToDo());
}

class TodoList extends StatefulWidget {
  @override
  _TodoListState createState() =>
      _TodoListState(); //TodoListState manages state
}

class _TodoListState extends State<TodoList> {
  final List<String> _todoItems = [];
  void _addtodoitems(String task) {
    if (task.length > 0) {
      setState(() {
        _todoItems.add(task);
      });
    }
  }

  void _removetodoitems(int index) {
    setState(() {
      _todoItems.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext) {
    return ListView.builder(
      itemCount: _todoItems.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(_todoItems[index]),
          onLongPress: () => _removetodoitems(index),
        );
      },
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo App',
      home: TodoList(),
    );
  }
}

class ToDo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("To Do List")),
          backgroundColor: Color(0xffff8f00),
          foregroundColor: Colors.black87,
        ),
        backgroundColor: Color(0xffffecb3),
        body: FloatingActionButton(
          onPressed: () {},
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {}),
      ),
    );
  }
}
