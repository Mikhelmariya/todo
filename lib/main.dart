import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:todo/screens/add_task_page.dart';
import 'package:todo/widgets/tasklist.dart';

import 'models/tasktext.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Homepage()));
}

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Iterable<Tasktext> completedtasklist = [];
  Iterable<Tasktext> tasklist = [];
  void updatelist() {
    setState(() {
      completedtasklist = tasks.where((element) => element.isdone);
      tasklist = tasks.where((element) => !element.isdone);
    });
    print("enter");
  }

  @override
  void initState() {
    updatelist();
    // TODO: implement initState constrtr
    super.initState();
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
            child: Positioned(
              bottom: 0,
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 1.5,
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
                                //return TaskList(tasks[index].toString());
                                return TaskList(
                                  task: tasklist.elementAt(index),
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
                          height: 90 * completedtasklist.length.toDouble(),
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
                                return TaskList(
                                  task: completedtasklist.elementAt(index),
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
          ),
          Positioned(
            bottom: 0,
            left: MediaQuery.of(context).size.width / 2.8,
            child: GestureDetector(
              onTap: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AddTaskPage()),
                ).then((value) {
                  setState(() {});
                });
              }),
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
