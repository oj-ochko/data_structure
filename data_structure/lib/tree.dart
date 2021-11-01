class BinaryTreeNode<T> {
  BinaryTreeNode(this.value, {this.left, this.right});

  T value;
  BinaryTreeNode<T>? left;
  BinaryTreeNode<T>? right;

  bool find(T value) {
    var result = false;
    traverseInOrder((v) {
      if (v == value) result = true;
    });
    return result;
  }

  void traverseInOrder(void Function(T value) doSomething) {
    left?.traverseInOrder(doSomething);
    doSomething(value);
    right?.traverseInOrder(doSomething);
  }

  void traversePreOrder(void Function(T value) doSomething) {
    doSomething(value);
    left?.traversePreOrder(doSomething);
    right?.traversePreOrder(doSomething);
  }

  void traversePostOrder(void Function(T value) doSomething) {
    left?.traversePostOrder(doSomething);
    right?.traversePostOrder(doSomething);
    doSomething(value);
  }

  @override
  String toString() {
    final out = StringBuffer();

    final indents = <String>[];
    right?._buildTree(out, true, indents);
    out.writeln(value);
    left?._buildTree(out, false, indents);

    return out.toString();
  }

  void _buildTree(StringBuffer out, bool isRight, List<String> indents) {
    if (right != null) {
      indents.add(isRight ? '     ' : '│    ');
      right!._buildTree(out, true, indents);
      indents.removeLast();
    }

    out
      ..writeAll(indents)
      ..write(isRight ? '┌─── ' : '└─── ')
      ..writeln(value);

    if (left != null) {
      indents.add(isRight ? '│    ' : '     ');
      left!._buildTree(out, false, indents);
      indents.removeLast();
    }
  }
}