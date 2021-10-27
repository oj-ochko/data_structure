import 'package:ring_buffer/tree.dart';

void main() {
  final tree = BinaryTreeNode('D',
      left: BinaryTreeNode('A'),
      right: BinaryTreeNode(
        'R',
        left: BinaryTreeNode('T'),
        right: BinaryTreeNode('Fun'),
      ));
  print(tree);
  tree.traversePostOrder((value) => print(value));
  print(tree.find("T"));
  print(tree.find("S"));
}
