import 'package:flutter/material.dart';

class TaskList extends StatelessWidget {
  var taskfrom;
  TaskList(taskfrom);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(17).copyWith(left: 12),
            child: Image.asset('images/study.png'),
          ),

          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(""),
                Text(""),
              ],
            ),
          ),

          // SizedBox(
          //  width: 10,
          // ),
          Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Checkbox(value: true, onChanged: ((value) {})),
          ),
        ],
      ),
    );
  }
}

class Todo {
  Todo({required this.text, required this.id, this.isdone = false});
  String text;
  String id;
  bool isdone;
}

List<Todo> todolist = [
  Todo(id: '01', text: "study", isdone: true),
  Todo(id: '02', text: "run", isdone: true),
  Todo(id: '03', text: "party", isdone: true)
];
