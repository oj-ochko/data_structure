void main() {
  final list = [1, 5, 1, 2, 67, 9, 2, 7];
  final heaped = heapSort(list);
  print(heaped);
}

List? heapSort(List list) {
  var _list = [];
  var current = 0;
  var currentj = 0;
  var initialLength = list.length;
  for (var i = 0; i < initialLength; i++) {
    current = list[0];
    currentj = 0;
    for (var j = 0; j < list.length; j++) {
      if (current > list[j]) {
        current = list[j];
        currentj = j;
      }
    }
    _list.add(current);
    list.removeAt(currentj);
  }
  return _list;
}
