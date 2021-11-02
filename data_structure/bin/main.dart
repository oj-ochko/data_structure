import 'package:ring_buffer/binary_search_tree.dart';

void main() {
  final tree = BinarySearchTree<int>();
  tree.insert(43);
  tree.insert(10);
  tree.insert(79);
  tree.insert(90);
  tree.insert(12);
  tree.insert(54);
  tree.insert(11);
  tree.insert(9);
  tree.insert(50);
  print(tree);

  print(tree.contains(66));
}
