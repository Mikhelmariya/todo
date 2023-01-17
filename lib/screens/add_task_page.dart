import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AddTaskPage extends StatelessWidget {
  const AddTaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 863.81,
          //width: 398.95,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(45.59),
            color: Color(0xffF1F5F9),
          ),
        ),
        Positioned(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 175.24, top: 31.58),
              child: Text(
                "Create new task",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 21,
                top: 59.42,
              ),
              child: Text(
                "Task Title",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
              ),
            )
          ],
        )),
      ]),
    );
  }
}
