import 'package:flutter/material.dart';

void main() {
  runApp(ToDo());
}

class ToDo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("To Do List"),
          backgroundColor: Color(0xffff8f00),
        ),
        backgroundColor: Color(0xffffecb3),
      ),
    );
  }
}
