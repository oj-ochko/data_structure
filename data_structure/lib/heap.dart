class Heap<E extends Comparable> {
  final _list = [];

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

  int? removeRoot() {
    int heapifyIndex = 0;
    _list[0] = _list[_list.length];
    while (heapifyIndex < _list.length - 1) {
      while (_list[_rightChild(heapifyIndex)].compareTo(
          _list[heapifyIndex] != 0 ||
              _list[_leftChild(heapifyIndex)]
                  .compareTo(_list[heapifyIndex] != 0))) {
        if (_list[_rightChild(heapifyIndex)]
            .compareTo(_list[heapifyIndex] != 0)) {
          swap(heapifyIndex, _rightChild(heapifyIndex));
          heapifyIndex = _rightChild(heapifyIndex);
        } else {
          swap(heapifyIndex, _leftChild(heapifyIndex));
          heapifyIndex = _leftChild(heapifyIndex);
        }
      }
    }
  }

  @override
  String toString() {
    return _list.toString();
  }
}
