import 'dart:html';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:todo/main.dart';
import 'package:todo/widgets/createlist.dart';
import 'package:todo/widgets/tasklist.dart';
import 'package:todo/models/tasktext.dart';

class AddTaskPage extends StatefulWidget {
  const AddTaskPage({super.key});

  @override
  State<AddTaskPage> createState() => _AddTaskPageState();
}

class _AddTaskPageState extends State<AddTaskPage> {
  //List<Tasktext> tasks = [];
  //final Tasktext object;
  final _task = TextEditingController();
  final _date = TextEditingController();
  final _time = TextEditingController();
  void _addTodoItem(String text) {
    setState(() {
      tasks.add(
          Tasktext(text: text, id: '6', time: '9', icon: "images/study.png"));
    });
    print(tasks.length);
    _task.clear();
  }

  DateTime selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    //final _todocontroller = TextEditingController();
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
              Align(
                alignment: Alignment.topCenter,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  "Create new task",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text(
                  "Task Title",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  width: 351,
                  height: 50,
                  decoration: BoxDecoration(color: Color(0xfffffffff)),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    controller: _task,
                    decoration: InputDecoration(
                      hintText: "Enter task to be done",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  "Category",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('images/study.png'),
                    Image.asset('images/run.png'),
                    Image.asset('images/party.png'),
                    Image.asset('images/img1.png'),
                    Image.asset('images/img2.png'),
                    Image.asset('images/img3.png'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  "Date and time",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 175.5,
                      height: 50,
                      decoration: BoxDecoration(color: Color(0xfffffffff)),
                      child: TextField(
                          controller: _date,
                          onTap: () async {
                            DateTime? datePicked = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2023),
                                lastDate: DateTime(2029));
                            if (datePicked != null) {
                              _date.text =
                                  ' ${datePicked.day}--${datePicked.month}--${datePicked.year}';
                              print(
                                  'Date selected : ${datePicked.day}--${datePicked.month}--${datePicked.year}');
                            }
                          },
                          decoration: InputDecoration(
                              hintText: "Date", border: OutlineInputBorder())),
                    ),
                    Container(
                      width: 175.5,
                      height: 50,
                      decoration: BoxDecoration(color: Color(0xfffffffff)),
                      child: TextField(
                          decoration: InputDecoration(
                              hintText: "Time", border: OutlineInputBorder())),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: ElevatedButton(
                    onPressed: () {
                      print(tasks.length);

                      _addTodoItem(_task.text);

                      Navigator.pop(context);
                    },
                    child: Text("ADD TASK")),
              ),
              ElevatedButton(
                  onPressed: () async {
                    TimeOfDay? pickedTime = await showTimePicker(
                        context: context,
                        initialTime: TimeOfDay.now(),
                        initialEntryMode: TimePickerEntryMode.input);
                    if (pickedTime != null) {
                      print(
                          'Time selected ${pickedTime.hour} : ${pickedTime.minute}');
                    }
                  },
                  child: Text("select time")),
              Spacer(
                flex: 1,
              ),
            ],
          )),
    );
  }
}
