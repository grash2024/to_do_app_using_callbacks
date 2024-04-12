class Task {
  String taskName;
  bool taskDone;
  Task({required this.taskName, this.taskDone = false});
  void taskStatus() {
    taskDone = !taskDone;
  }
}
