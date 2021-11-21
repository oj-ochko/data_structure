import 'tree.dart';

class Heap<E extends Comparable> {
  final _list = [];
  BinaryTreeNode<E>? root;

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

  void printTree() {
    print(root);
  }

  void heapTree() {
    for (var value in _list) {
      var counter = 0;
      if (counter == _list[0]) add(value);
      if (_leftChild(counter) < _list.length) {
        add(_list[_leftChild(counter)]);
      }
      if (_rightChild(counter) < _list.length) {
        add(_list[_rightChild(counter)]);
      }
    }
  }

  void add(E value) {
    root = _addAt(root, value);
  }

  BinaryTreeNode<E> _addAt(BinaryTreeNode<E>? node, E value) {
    if (node == null) {
      return BinaryTreeNode<E>(value);
    }

    if (value.compareTo(node.value) != 0) {
      node.left = _addAt(node.left, value);
    } else {
      node.right = _addAt(node.right, value);
    }

    return node;
  }

  @override
  String toString() {
    // TODO: implement toString
    return _list.toString();
  }
}
