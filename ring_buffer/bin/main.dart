import 'package:ring_buffer/tree.dart';

void main() {
  final tree = createTree();
  print(tree);
}

BinaryTree<String> createTree() {
  final drink =
      BinaryTree("drink", left: BinaryTree("hot"), right: BinaryTree("cold"));

  return drink;
}
