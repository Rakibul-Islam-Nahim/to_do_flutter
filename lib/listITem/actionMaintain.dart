class ToDo {
  String id;
  String todotext;
  bool isDone;

  ToDo({
    required this.id,
    required this.todotext,
    this.isDone = false,
  });

  static List<ToDo> toDoList() {
    return [
      ToDo(id:'01',todotext: 'Morning Exercise',isDone: true),
      ToDo(id:'02',todotext: 'Have Breakfast',isDone: true),
      ToDo(id:'03',todotext: 'Have Bath',isDone: true),
      ToDo(id:'04',todotext: 'Have Lunch',isDone: false),
      ToDo(id:'05',todotext: 'Go to Play',isDone: false),
      ToDo(id:'06',todotext: 'Come back to home',isDone: true),
    ];
  }
}
