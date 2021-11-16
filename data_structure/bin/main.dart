import 'package:data_structure/heap.dart';

void main() {
  final theList = [10, 8, 6, 3, 7, 5, 0, 1, 2, 0, 1, 5];
  var list = Heap();
  list.insertAll(theList);
  print(list);
  list.insertValue(9);
  print(list);
  list.removeRoot();
  print(list);
}
