import 'dart:html';

import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

void main() {
  runApp(MaterialApp(
    home: Column(
      children: [
        Container(
          height: 250,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/todo.png"), fit: BoxFit.cover)),
        ),
        Container(
          height: 324,
          color: Color(0xffF6F5F8),
          child: FloatingActionButton(onPressed: (() {})),
        ),
        Expanded(
            child: Column(children: [
          Container(
            color: Colors.amber,
          )
        ])),
      ],
    ),
  ));
}
