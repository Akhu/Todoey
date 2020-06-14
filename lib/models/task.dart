
class Task {
  final String name;
  bool isDone;

  Task({ this.name, this.isDone = false});

  void toggleDone() {
    this.isDone = true;
  }
}