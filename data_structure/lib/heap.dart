class Heap<E> {
  List<E> _list = [];

  int _leftChild(int parentIndex) => (parentIndex * 2) + 1;
  int _rightChild(int parentIndex) => (parentIndex * 2) + 2;
  int _parent(int childIndex) => (childIndex - 1) ~/ 2;
  void swap(int firstIndex, int secondIndex) {
    final firstValue = _list[firstIndex];
    final secondtValue = _list[secondIndex];
    _list[firstIndex] = firstValue;
    _list[secondIndex] = secondtValue;
  }

  void insert(E newValue) {
    _list.add(newValue);
    if (_list[_parent(_list.indexOf(newValue))] < newValue) {}
  }
}
