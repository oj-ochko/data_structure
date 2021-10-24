class BinaryTree<T> {
  T value;
  BinaryTree<T>? left, right;
  BinaryTree(this.value, {this.left, this.right});

  void traverseTree() {
    print(value);
  }
}
