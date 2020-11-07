library split_string;

extension StringFiller on String {
  String getFirstTwoOrFill() {
    return this.length >= 2 ? this.substring(0, 2) : this + '_';
  }
}

class StringSplitter {
  int splitBy;

  StringSplitter({this.splitBy = 2});

  List<String> split(String input) {
    List<String> result = input.isEmpty ? [] : [input.getFirstTwoOrFill()];
    if (input.length > 2) {
      result.addAll(split(input.substring(2)));
    }
    return result;
  }
}
