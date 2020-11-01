library popular_words;

extension WordCounter on List<String> {
  int count(String word) {
    return this.where((e) => e == word).length;
  }
}

class PopularWords {
  Map<String, int> getCounts(String input, List<String> words) {
    final splittedInputs = input.toLowerCase().split(' ');

    return Map.fromIterable(words,
        key: (word) => word, value: (word) => splittedInputs.count(word));
  }
}
