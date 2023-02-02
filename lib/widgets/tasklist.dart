import 'package:flutter/material.dart';
import 'package:todo/screens/add_task_page.dart';

import '../todo.dart';
import 'package:todo/models/tasktext.dart';

class TaskList extends StatefulWidget {
  TaskList({required this.task});
  final Tasktext task;

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(17).copyWith(left: 12),
          child: Image.asset(widget.task.icon),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.task.text,
                  style: TextStyle(
                      decoration: widget.task.isdone
                          ? TextDecoration.lineThrough
                          : null)),
              Text(widget.task.time),
            ],
          ),
        ),
        Spacer(
          flex: 1,
        ),
        Padding(
          padding: const EdgeInsets.all(30),
          child: Checkbox(
              value: widget.task.isdone,
              onChanged: ((value) {
                widget.task.isdone = value!;
                print(value);
                setState(() {});
              })),
        ),
      ],
    );
  }
}
