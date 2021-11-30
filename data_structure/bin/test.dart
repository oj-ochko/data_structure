void main() {
  final list = [1, 5, 1, 2, 67, 9, 2, 7, 2, 7, 124, 8];
  selectionSort(list);
  print(list);
}

void swap(List list, int indexOne, int indexTwo) {
  var valueOne = list[indexOne];
  list[indexOne] = list[indexTwo];
  list[indexTwo] = valueOne;
}

void selectionSort(List list) {
  for (var i = 0; i < list.length - 1; i++) {
    int min = i;
    for (var j = i + 1; j < list.length; j++) {
      if (list[min] > list[j]) {
        min = j;
      }
    }
    if (min != i) {
      swap(list, i, min);
    }
  }
}
