int? factorialRecursion(num) {
  int total = 0;
  if (num == 0) {
    return 1;
  }
  return total = num * factorialRecursion(num - 1);
}

//a time traveler who can jump 3 years back but 2 forward
String? timeTravel(num, int targetYear) {
  int currentYear = num;
  print(currentYear);
  if (currentYear == targetYear) {
    return ('Destination reached');
  }
  if (num > targetYear) {
    timeTravel(num - 3, targetYear);
  } else {
    timeTravel(num + 2, targetYear);
  }
}

void main() {
  print(factorialRecursion(5));
  timeTravel(2021, 2001);
}
