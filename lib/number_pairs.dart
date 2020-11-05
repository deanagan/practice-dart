library number_pairs;

class NumberPairs {
  List<int> numbers;

  NumberPairs(this.numbers);

  int getTotalNumberPairs(int denominator) {
    var countMap = Map<int, int>();

    var total = 0;
    for (var number in numbers) {
      total += countMap.putIfAbsent(-number % denominator, () => 0);
      countMap.update(number % denominator, (value) => value + 1,
          ifAbsent: () => 1);
    }

    return total;
  }
}
