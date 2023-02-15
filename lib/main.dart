import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:todo/screens/add_task_page.dart';
import 'package:todo/todo_storage.dart';
import 'package:todo/widgets/tasklist.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:path_provider/path_provider.dart';

import 'models/tasktext.dart';

void main() async {
  //initializing
  await Hive.initFlutter();
  // Registering the adapter
  Hive.registerAdapter(TasktextAdapter());
  await Hive.openBox('mybox');

  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Homepage()));
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

var mybox;

class _HomepageState extends State<Homepage> {
  late final Box box;

  @override
  void dispose() {
    Hive.close();
    super.dispose();
  }

  List<Tasktext> completedTasks = [];

  //Iterable<Tasktext> completedtasklist = []; //iterable initially
  //Iterable<Tasktext> tasklist = []; //iterable initially
  List<dynamic> completedtasklist = []; //iterable initially
  List<dynamic> tasklist = []; //iterable initially

  void updatelist() {
    setState(() {
      completedtasklist =
          box.values.where((element) => element.isdone).toList();
      tasklist = box.values.where((element) => !element.isdone).toList();
      // tasklist = box.values as Iterable<Tasktext>;
      //completedtasklist =
      //   tasklist.where((element) => element.isdone) as Iterable<Tasktext>;
      // box.values.where((element) => element.isdone).toList();

      // var box = Hive.box('mybox');
      // var keys = box.keys.toList();
      // var completedtasklist = keys
      //     .where((key) => box.get(key).isdone)
      //     .map((key) => box.get(key))
      //     .toList();
      // var tasklist = keys
      //     .where((key) => box.get(key)!.isdone)
      //     .map((key) => box.get(key))
      //     .toList();

      //tasklist = tasks.where((element) => !element.isdone);
    });
  }

  @override
  void initState() {
    super.initState();
    box = Hive.box('mybox');
    updatelist();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Color(0xfff6f5f8),
            child: Column(
              children: [
                Column(children: [
                  Container(
                    height: 250,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/todo.png'),
                            fit: BoxFit.cover)),
                    child: Column(children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 17),
                          child: Text("Task Manager",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                  fontSize: 17)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 63.42),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.arrow_back_ios_rounded,
                                    color: Colors.white,
                                  )),
                              Text(
                                "December",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 28),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: Colors.white,
                                  )),
                            ]),
                      ),
                    ]),
                  ),
                ]),
              ],
            ),
          ),
          Center(
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 2.5,
              child: RefreshIndicator(
                onRefresh: () async {
                  return updatelist();
                },
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        height: 90 * tasklist.length.toDouble(),
                        width: 364,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(17)),
                        child: ListView.separated(
                            physics: NeverScrollableScrollPhysics(),
                            separatorBuilder: (context, index) {
                              return Divider(
                                height: 1,
                                color: Colors.grey,
                              );
                            },
                            itemCount: tasklist.length,
                            itemBuilder: ((context, index) {
                              // var currentBox = box;
                              // var TODOdATA = currentBox.getAt(index)!;
                              return TaskList(
                                task: tasklist[index],
                                update: () {
                                  setState(() {
                                    updatelist();
                                  });
                                },
                              );
                            })),
                      ),
                      Text(
                        "Completed",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        height: 90 * box.length.toDouble(),
                        width: 364,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(17)),
                        child: ListView.separated(
                            physics: NeverScrollableScrollPhysics(),
                            separatorBuilder: (context, index) {
                              return Divider(
                                height: 1,
                                color: Colors.grey,
                              );
                            },
                            itemCount: completedtasklist.length,
                            itemBuilder: ((context, index) {
                              //var currentBox = box;
                              // var TODOdATA = currentBox.getAt(index)!;
                              return TaskList(
                                task: completedtasklist[index],
                                update: () {
                                  setState(() {
                                    updatelist();
                                  });
                                },
                              );
                            })),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AddTaskPage()),
              ).then((value) {
                setState(() {});
              });
            }),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  alignment: Alignment.bottomCenter,
                  height: 40,
                  width: 364.96,
                  decoration: BoxDecoration(
                    color: Color(0xff3d84d9),
                    borderRadius: BorderRadius.circular(53.19),
                  ),
                  child: Center(
                    child: Text("Add new Task"),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
