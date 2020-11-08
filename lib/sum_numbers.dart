library sum_numbers;

class SumNumbers {
  int total(String text) {
    final exp = new RegExp(r"(^| )(\d)+($| )");
    return exp.allMatches(text).fold(0,
        (total, value) => int.parse(value.group(0), onError: (s) => 0) + total);
  }
}
