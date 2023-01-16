import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:todo/screens/add_task_page.dart';
import 'package:todo/widgets/tasklist.dart';

void main() {
  runApp(Homepage());
}

class Homepage extends StatelessWidget {
  const Homepage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
            Positioned(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30, bottom: 63),
                      child: Text(
                        "Task Manager",
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                            fontSize: 17),
                      ),
                    ),
                    Row(
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
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 17, vertical: 25),
                      child: Container(
                        height: 70 * 3,
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
                            itemCount: 3,
                            itemBuilder: ((context, index) {
                              return TaskList();
                            })),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 70),
                      child: Row(
                        children: [
                          Text(
                            "Completed",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 17, vertical: 25),
                      child: Container(
                        height: 70 * 3,
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
                            itemCount: 3,
                            itemBuilder: ((context, index) {
                              return TaskList();
                            })),
                      ),
                    ),
                    SizedBox(
                      height: 250,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: GestureDetector(
                onTap: (() {
                  print("inside");
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => AddTaskPage()),
                  );
                }),
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
          ],
        ),
      ),
    );
  }
}
