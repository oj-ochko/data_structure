class Heap<E extends Comparable> {
  List<E> _list = [];

  int _leftChild(int parentIndex) => (parentIndex * 2) + 1;
  int _rightChild(int parentIndex) => (parentIndex * 2) + 2;
  int _parent(int childIndex) => (childIndex - 1) ~/ 2;
  void swap(int firstIndex, int secondIndex) {
    final firstValue = _list[firstIndex];
    final secondtValue = _list[secondIndex];
    _list[firstIndex] = secondtValue;
    _list[secondIndex] = firstValue;
  }

  void insertValue(E newValue) {
    _list.add(newValue);
    var parentIndex = _parent(_list.length - 1);
    var parentValue = _list[parentIndex];
    var newValueIndex = _list.length - 1;
    while (newValue.compareTo(parentValue) > 0) {
      swap(newValueIndex, parentIndex);
      parentIndex = _parent(parentIndex);
      newValueIndex = _parent(_parent(newValueIndex));
      parentValue = _list[parentIndex];
    }
  }

  void insertAll(List list) {
    for (var item in list) {
      insertValue(item);
    }
  }
  @override
  String toString() {
    final out = StringBuffer();

    final indents = <String>[];
    _list[_rightChild(0)]._buildTree(out, true, indents);
    out.writeln(_list[0]);
    _list[_leftChild(0)]._buildTree(out, false, indents);

    return out.toString();
  }

  void _buildTree(StringBuffer out, bool isRight, List<String> indents) {
    if (_list[_rightChild(0)] != null) {
      indents.add(isRight ? '     ' : '│    ');
      _list[_rightChild(0)]._buildTree(out, true, indents);
      indents.removeLast();
    }

    out
      ..writeAll(indents)
      ..write(isRight ? '┌─── ' : '└─── ')
      ..writeln(_list[0]);

    if (_list[_leftChild(0)] != null) {
      indents.add(isRight ? '│    ' : '     ');
      _list[_leftChild(0)]._buildTree(out, false, indents);
      indents.removeLast();
    }
  }
}
