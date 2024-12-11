
int sumOfEvenNumbers(List<int> numberList) {
  int sum = 0;
  for (var number in numberList) {
    if (number % 2 == 0) {
      sum += number;
    }
  }
  return sum;
}

/// jjhuh
