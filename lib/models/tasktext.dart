import 'package:hive/hive.dart';

part 'tasktext.g.dart';

@HiveType(typeId: 1)
class Tasktext extends HiveObject {
  @HiveField(0)
  String text;
  @HiveField(1)
  String id;
  @HiveField(2)
  String time;
  @HiveField(3)
  String icon;
  @HiveField(4)
  bool isdone;
  Tasktext({
    required this.text,
    required this.id,
    this.isdone = false,
    required this.time,
    required this.icon,
  });
}

//List<Tasktext> tasks = [];
List<Tasktext> tasks = [
  // Tasktext(
  //     text: "",
  //     id: '01',
  //     time: '4:00 PM',
  //     isdone: true,
  //     icon: "images/run.png"),
  // Tasktext(
  //     text: "Run time",
  //     id: '02',
  //     isdone: false,
  //     time: '5:00 pm',
  //     icon: "images/run.png"),
  // Tasktext(
  //     text: "party time",
  //     id: '03',
  //     isdone: true,
  //     time: '5:00 pm',
  //     icon: "images/run.png"),
  Tasktext(
      text: "party time",
      id: '03',
      isdone: false,
      time: '5:00 pm',
      icon: "images/run.png")
];

//List<Tasktext> tasks_completed = [];
