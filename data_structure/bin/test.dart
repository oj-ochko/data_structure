int? factorialRecursion(num) {
  int total = 0;
  if (num == 0) {
    return 1;
  }
  return total = num * factorialRecursion(num - 1);
}

String? timeTravel(num, int target) {
  int current = num;
  print(current);
  if (current == target) {
    return ('Destination reached');
  }
  if (num > target) {
    timeTravel(num - 3, target);
  } else {
    timeTravel(num + 2, target);
  }
}

void main() {
  print(factorialRecursion(5));
  // final test = timeTravel(2021, 1999);
  // print(test);
  timeTravel(2021, 2001);
}
