class Tasktext {
  String text;
  String id;
  String time;
  String icon;
  bool isdone;
  Tasktext({
    required this.text,
    required this.id,
    this.isdone = false,
    required this.time,
    required this.icon,
  });
}

List<Tasktext> tasks = [
  Tasktext(
      text: "Study time",
      id: '01',
      time: '4:00 PM',
      isdone: true,
      icon: "images/run.png"),
  Tasktext(
      text: "Run time",
      id: '02',
      isdone: false,
      time: '5:00 pm',
      icon: "images/run.png"),
  Tasktext(
      text: "party time",
      id: '03',
      isdone: true,
      time: '5:00 pm',
      icon: "images/run.png"),
  Tasktext(
      text: "party time",
      id: '03',
      isdone: false,
      time: '5:00 pm',
      icon: "images/run.png")
];

List<Tasktext> tasks_completed = [];
