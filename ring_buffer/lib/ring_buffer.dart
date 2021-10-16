class Ring<E> {
  List _list = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
  int limit = 0;
  int reader = 0;
  bool limitFull = false;
  bool readerFull = false;

  void checkFull() {
    if (limit == 9) {
      limitFull = true;
    } else {
      limitFull = false;
    }
    if (reader == 9) {
      readerFull = true;
    } else {
      readerFull = false;
    }
  }

  void add(value) {
    checkFull();
    _list[limit] = value;
    if (limitFull) {
      limit = 0;
    } else {
      limit += 1;
    }
  }

  E? read() {
    checkFull();
    if (_list[reader] == null) return null;
    final value = _list[reader];
    if (readerFull) {
      reader = 0;
    } else {
      reader += 1;
    }
    return value;
  }

  @override
  String toString() {
    return _list.toString();
  }
}
