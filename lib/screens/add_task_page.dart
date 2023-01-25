import 'dart:html';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:todo/widgets/createlist.dart';

class AddTaskPage extends StatefulWidget {
  const AddTaskPage({super.key});

  @override
  State<AddTaskPage> createState() => _AddTaskPageState();
}

class _AddTaskPageState extends State<AddTaskPage> {
  var task = TextEditingController();
  var date = TextEditingController();
  var time = TextEditingController();
  DateTime selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    TextEditingController taskTitleController = TextEditingController();

    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(45.59),
            color: Color(0xffF1F5F9),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 17.24, top: 31.58),
                child: Text(
                  "Create new task",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width / 5, vertical: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Task Title",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.29),
                      child: Container(
                        width: 351,
                        height: 50,
                        decoration: BoxDecoration(color: Color(0xfffffffff)),
                        child: TextField(
                          keyboardType: TextInputType.text,
                          controller: task,
                          decoration: InputDecoration(
                            hintText: "Enter task to be done",
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 21.71),
                      child: Text(
                        "Category",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 13),
                      child: Row(
                        children: [
                          Image.asset('images/study.png'),
                          Image.asset('images/run.png'),
                          Image.asset('images/party.png'),
                          //Image.asset('images/img1.png'),
                          // Image.asset('images/img2.png'),
                          // Image.asset('images/img3.png'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 19),
                      child: Text(
                        "Date and time",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 351 / 2,
                            height: 50,
                            decoration:
                                BoxDecoration(color: Color(0xfffffffff)),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 16.41, left: 14.59),
                              child: TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder())),
                            ),
                          ),
                          Container(
                            // width: 351 / 2,
                            height: 50,
                            decoration:
                                BoxDecoration(color: Color(0xfffffffff)),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 16.41, left: 14.59),
                              child: Text("12:00 pm"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(onPressed: () {}, child: Text("ADD TASK"))
            ],
          )),
    );
  }
}
