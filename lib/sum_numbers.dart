library sum_numbers;

class SumNumbers {
  int total(String text) {
    // Keeping solution below as reference for using regular expression
    // final exp = new RegExp(r"(^| )(\d)+($| )");
    // return exp.allMatches(text).fold(0,
    //     (total, value) => int.parse(value.group(0), onError: (s) => 0) + total);

    return text
        .split(' ')
        .fold(0, (total, val) => int.parse(val, onError: (s) => 0) + total);
  }
}
