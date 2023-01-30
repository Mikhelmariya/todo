class ToDo {
  String? id;
  String? tasktext;
  String? datetext;
  bool isDone;

  ToDo(
      {required this.id,
      required this.datetext,
      required this.tasktext,
      this.isDone = false});
  static List<ToDo> todolist() {
    return [
      ToDo(
          id: '01', datetext: '4:00 pm', tasktext: 'Study time', isDone: false),
      ToDo(id: '02', datetext: '4:00 pm', tasktext: 'party time', isDone: true),
      ToDo(id: '03', datetext: '4:00 pm', tasktext: 'Sleep time', isDone: false)
    ];
  }
}
