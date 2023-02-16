import 'package:flutter/material.dart';
import 'package:todo/screens/add_task_page.dart';

import '../todo.dart';
import 'package:todo/models/tasktext.dart';

class TaskList extends StatelessWidget {
  TaskList({required this.task, required this.update});
  final Tasktext task;
  final Function update;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(17).copyWith(left: 12),
          child: Image.asset(task.icon),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(task.text,
                  style: TextStyle(
                      decoration:
                          task.isdone ? TextDecoration.lineThrough : null)),
              Text(task.time),
            ],
          ),
        ),
        Spacer(
          flex: 1,
        ),
        Padding(
          padding: const EdgeInsets.all(30),
          child: Checkbox(
              value: task.isdone,
              onChanged: ((value) {
                task.isdone = value!;
                

                update();
              })),
        ),
      ],
    );
  }
}
