class Corp {
  final _list = <String, List<Map>>{};
  void addEmployee(name, position, age, salary) {
    _list[name] = [
      {"position": position},
      {"age": age},
      {"salary": salary}
    ];
  }

  List? peek(name) {
    return _list[name];
  }

  @override
  String toString() {
    return _list.toString();
  }
}
