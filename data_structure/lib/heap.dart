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
    var newValueIndex = _list.length - 1;
    while (_list[newValueIndex] > _list[parentIndex] && newValueIndex != 0) {
      swap(newValueIndex, parentIndex);
      newValueIndex = parentIndex;
      parentIndex = _parent(parentIndex);
    }
  }

  void insertAll(List list) {
    for (var item in list) {
      insertValue(item);
    }
  }

  void heapify(int i) {
    int largest = i;
    int l = 2 * i + 1;
    int r = 2 * i + 2;
    int length = _list.length - 1;

    if (_leftChild(i) < length && _list[_leftChild(i)] > _list[largest]) {
      largest = l;
    }
    if (_rightChild(i) < length && _list[_rightChild(i)] > _list[largest]) {
      largest = r;
    }
    if (largest != i) {
      swap(i, largest);
      heapify(largest);
    }
  }

  void removeRoot() {
    _list[0] = _list.last;
    _list.removeLast();
    heapify(0);
  }

  @override
  String toString() {
    return _list.toString();
  }
}
