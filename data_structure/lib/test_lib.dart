class Corp {
  final _list = <String, List<Map>>{};
  void addEmployee(name, position, age, String salary) {
    if (salary.length - 1 == "\$") {
      salary = salary.substring(0, salary.length - 1);
    }
    _list[name] = [
      {"position": position},
      {"age": age},
      {"salary": (salary + '\$')}
    ];
  }

  List? grabInfo(name) {
    return _list[name];
  }

  void peek(name) {
    print('  $name \n\t'
            "Position: " +
        _list[name]![0]["position"] +
        '\n\tAge: ${_list[name]![1]["age"]}'
            '\n\tAnnual Earnings: ${_list[name]![2]["salary"]}');
  }

  void changeName(currentName, newName) {
    List? current = _list[currentName];
    addEmployee(newName, current![0]['position'], current[1]['age'],
        current[2]['salary']);
    _list.remove(currentName);
  }

  void changePosition(name, newPosition) {
    _list[name]?[0]['position'] = newPosition;
  }

  void changeAge(name, newAge) {
    _list[name]?[1]['age'] = newAge;
  }

  void changeSalary(name, newSalary) {
    _list[name]?[2]['salary'] = newSalary + '\$';
  }

  @override
  String toString() {
    return _list.toString();
  }
}
