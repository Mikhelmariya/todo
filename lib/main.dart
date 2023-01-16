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
            width: 546,
            height: 820,
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
          Positioned.fill(
            top: 150,
            child: Column(children: [
              Container(
                height: 70,
                width: 364.9,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.add),
                    Center(
                      child: Column(
                        children: [Center(child: Text("Study lesson"))],
                      ),
                    ),
                  ],
                ),
              ),

              //Icon((AssetImage("images/run.png"))),
              Container(
                height: 70,
                width: 364.9,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.add),
                    Center(
                      child: Column(
                        children: [
                          Center(child: Text("Run 5k")),
                          Text("4.00 pm")
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                height: 70,
                width: 364.9,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.add),
                    Column(
                      children: [
                        Center(child: Text("Go to Party")),
                        Text("10.00 pm")
                      ],
                    ),
                  ],
                ),
              ),
              Text("COMPLETED"),
              //Spacer(),
            ]),
          ),
          Positioned(
            bottom: 0,
            child: InkWell(
              onTap: (() {}),
              child: Container(
                  height: 59.58,
                  width: 364.96,
                  decoration: BoxDecoration(
                    color: Color(0xff3d84d9),
                    borderRadius: BorderRadius.circular(53.19),
                  ),
                  child: Center(
                    child: Text("Add new Task"),
                  )),
            ),
          ),
          Positioned(
              top: 500,
              child: Container(
                height: 70,
                width: 300,
                color: Colors.amberAccent,
              )),
        ],
      ),
    ),
  ));
}
