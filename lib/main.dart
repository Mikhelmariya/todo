import 'dart:html';

import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            color: Color(0xfff6f5f8),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 400,
            child: FittedBox(
              fit: BoxFit.fill,
              child: Image.asset('images/todo.png'),
            ),
          ),
          Positioned(
            top: 150,
            child: Column(
              children: [
                Container(
                  height: 70,
                  width: 300,
                  color: Colors.white,
                  child: Column(
                    children: [Text("Study lesson")],
                  ),
                ),
                Container(
                  height: 70,
                  width: 300,
                  color: Colors.white,
                  child: Column(
                    children: [Text("Run 5k"), Text("4.00 pm")],
                  ),
                ),
                Container(
                  height: 70,
                  width: 300,
                  color: Colors.white,
                  child: Column(
                    children: [Text("Go to Party"), Text("10.00 pm")],
                  ),
                ),
                Positioned(
                  child: InkWell(
                    onTap: (() {}),
                    child: Container(
                        height: 30,
                        width: 300,
                        decoration: BoxDecoration(
                          color: Color(0xff3d84d9),
                          borderRadius: BorderRadius.circular(53.19),
                        ),
                        child: Center(
                          child: Text("Add new Task"),
                        )),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  ));
}
