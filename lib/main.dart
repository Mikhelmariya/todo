import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:todo/screens/add_task_page.dart';
import 'package:todo/widgets/tasklist.dart';

void main() {
  runApp(MaterialApp(home: Homepage()));
}

class Homepage extends StatelessWidget {
  const Homepage({
    Key? key,
  }) : super(key: key);

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
                    padding: const EdgeInsets.only(top: 165),
                    child: Text(
                      "Completed",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ]),
                SingleChildScrollView(
                  child: Container(
                    height: 70 * 2,
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
                          return TaskList();
                        })),
                  ),
                ),
                // GestureDetector(
                //   onTap: (() {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //           builder: (context) => const AddTaskPage()),
                //     );
                //   }),
                //   child: Container(
                //       alignment: Alignment.bottomCenter,
                //       height: 59.58,
                //       width: 364.96,
                //       decoration: BoxDecoration(
                //         color: Color(0xff3d84d9),
                //         borderRadius: BorderRadius.circular(53.19),
                //       ),
                //       child: Center(
                //         child: Text("Add new Task"),
                //       )),
                // )
              ],
            ),
          ),
          Center(
            child: Container(
              height: 70 * 3,
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
                  itemCount: 3,
                  itemBuilder: ((context, index) {
                    return TaskList();
                  })),
            ),
          ),
        ],
      ),
    );
  }
}
          // Positioned(
          //   top: 0,
          //   left: 0,
          //   right: 0,
          //   bottom: 400,
          //   child: FittedBox(
          //     fit: BoxFit.fill,
          //     child: Image.asset('images/todo.png'),
          //   ),
          // ),
          // Positioned(
          //   child: SingleChildScrollView(
          //     child: Column(
          //       children: [
          //         Padding(
          //           padding: const EdgeInsets.only(top: 30, bottom: 63),
          //           child: Text(
          //             "Task Manager",
          //             style: TextStyle(
          //                 fontWeight: FontWeight.normal,
          //                 color: Colors.white,
          //                 fontSize: 17),
          //           ),
          //         ),
          //         Row(
          //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //           children: [
          //             IconButton(
          //                 onPressed: () {},
          //                 icon: Icon(
          //                   Icons.arrow_back_ios_rounded,
          //                   color: Colors.white,
          //                 )),
          //             Text(
          //               "December",
          //               style: TextStyle(
          //                   fontWeight: FontWeight.bold,
          //                   color: Colors.white,
          //                   fontSize: 28),
          //             ),
          //             IconButton(
          //                 onPressed: () {},
          //                 icon: Icon(
          //                   Icons.arrow_forward_ios_rounded,
          //                   color: Colors.white,
          //                 )),
          //           ],
          //         ),
          //         Padding(
          //           padding: const EdgeInsets.symmetric(
          //               horizontal: 17, vertical: 25),
          //           child: Container(
          //             height: 70 * 3,
          //             width: 364,
          //             decoration: BoxDecoration(
          //                 color: Colors.white,
          //                 borderRadius: BorderRadius.circular(17)),
          //             child: ListView.separated(
          //                 separatorBuilder: (context, index) {
          //                   return Divider(
          //                     height: 1,
          //                     color: Colors.grey,
          //                   );
          //                 },
          //                 itemCount: 3,
          //                 itemBuilder: ((context, index) {
          //                   return TaskList();
          //                 })),
          //           ),
          //         ),
          //         Text(
          //           "Completed",
          //           style: TextStyle(
          //               fontWeight: FontWeight.bold, color: Colors.black),
          //         ),
          //         Padding(
          //           padding: const EdgeInsets.symmetric(
          //               horizontal: 17, vertical: 25),
          //           child: Container(
          //             height: 70 * 3,
          //             width: 364,
          //             decoration: BoxDecoration(
          //                 color: Colors.white,
          //                 borderRadius: BorderRadius.circular(17)),
          //             child: ListView.separated(
          //                 separatorBuilder: (context, index) {
          //                   return Divider(
          //                     height: 1,
          //                     color: Colors.grey,
          //                   );
          //                 },
          //                 itemCount: 3,
          //                 itemBuilder: ((context, index) {
          //                   return TaskList();
          //                 })),
          //           ),
          //         ),
          //         SizedBox(
          //           height: 250,
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          // GestureDetector(
          //   onTap: (() {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(builder: (context) => const AddTaskPage()),
          //     );
          //   }),
          //   child: Container(
          //       height: 59.58,
          //       width: 364.96,
          //       decoration: BoxDecoration(
          //         color: Color(0xff3d84d9),
          //         borderRadius: BorderRadius.circular(53.19),
          //       ),
          //       child: Center(
          //         child: Text("Add new Task"),
          //       )),
          
        
   ///   ),
   // );
 // }
//}
