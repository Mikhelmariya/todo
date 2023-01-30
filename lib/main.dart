import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:todo/screens/add_task_page.dart';
import 'package:todo/widgets/tasklist.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Homepage()));
}

class Homepage extends StatelessWidget {
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
                  Padding(
                    padding: const EdgeInsets.only(top: 150),
                    child: Text(
                      "Completed",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ]),
                SingleChildScrollView(
                  child: Container(
                    height: 58 * 2,
                    width: 364,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(17)),
                    child: ListView.separated(
                        separatorBuilder: (context, index) {
                          return Divider(
                            height: 1,
                            color: Colors.grey,
                          );
                        },
                        itemCount: 2,
                        itemBuilder: ((context, index) {
                          return TaskList("");
                        })),
                  ),
                ),
                GestureDetector(
                  onTap: (() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AddTaskPage()),
                    );
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
                )
              ],
            ),
          ),
          Center(
            child: Container(
              height: 58 * 3,
              width: 364,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(17)),
              child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return Divider(
                      height: 1,
                      color: Colors.grey,
                    );
                  },
                  itemCount: tasks.length,
                  itemBuilder: ((context, index) {
                    //return TaskList(tasks[index].toString());
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(17).copyWith(left: 12),
                          child: Image.asset(myicon[index].icon),
                        ),
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(tasks[index].text.toString(),
                                  style: TextStyle(
                                      decoration: tasks[index].isdone
                                          ? TextDecoration.lineThrough
                                          : null)),
                              Text(times[index].time.toString()),
                            ],
                          ),
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(30),
                          child: Checkbox(
                              value: tasks[index].isdone ? true : false,
                              onChanged: ((value) {})),
                        ),
                      ],
                    );
                  })),
            ),
          ),
        ],
      ),
    );
  }
}

class Tasktext {
  String text;
  String id;
  bool isdone;
  Tasktext({required this.text, required this.id, this.isdone = false});
}

List<Tasktext> tasks = [
  Tasktext(text: "Study time", id: '01', isdone: true),
  Tasktext(text: "Run time", id: '02', isdone: false),
  Tasktext(text: "party time", id: '03', isdone: false)
];

class Tasktime {
  String time;
  Tasktime({required this.time});
}

List<Tasktime> times = [
  Tasktime(time: "4:00 pm"),
  Tasktime(time: "3:00 pm"),
  Tasktime(time: "2:00 pm")
];

class Myicon {
  String icon;
  Myicon({required this.icon});
}

List<Myicon> myicon = [
  Myicon(icon: "images/study.png"),
  Myicon(icon: "images/run.png"),
  Myicon(icon: "images/party.png")
];
