import 'tree.dart';

class BinarySearchTree<E extends Comparable> {
  BinaryTreeNode<E>? root;

  void insert(E value) {
    root = _insertAt(root, value);
  }

  BinaryTreeNode<E> _insertAt(BinaryTreeNode<E>? node, E value) {
    if (node == null) {
      return BinaryTreeNode<E>(value);
    }

    if (value.compareTo(node.value) >= 0) {
      node.right = _insertAt(node.right, value);
    } else {
      node.left = _insertAt(node.left, value);
    }

    return node;
  }

  // bool? contains(E value) {
  //   var current = root;
  //   if (current == null) {
  //     return false;
  //   }
  //   while (current != null) {
  //     if (current.value == value) {
  //       return true;
  //     }
  //     if (value.compareTo(current.value) >= 0) {
  //       current = current.right;
  //     } else {
  //       current = current.left;
  //     }
  //   }
  //   return false;
  // }
  bool contains(E value) {
    var node = root;
    bool result = _containsHelper(node, value);
    return result;
  }

  bool _containsHelper(BinaryTreeNode? node, E value) {
    if (node == null) {
      return false;
    }
    if (node.value == value) {
      return true;
    }
    if (value.compareTo(node.value) >= 0) {
      return _containsHelper(node.right, value);
    } else {
      return _containsHelper(node.left, value);
    }
  }

  @override
  String toString() => root.toString();
}
