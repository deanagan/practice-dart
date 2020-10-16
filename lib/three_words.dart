library three_words;

extension NumberParsing on String {
  bool isAlpha() {
    String source = this.trim();
    return int.tryParse(source) == null;
  }
}

class WordAnalyzer {
  bool has3ConsecutiveWords(String text) {
    var words = text.split(' ');
    var len = words.fold(
        0,
        (total, currentWord) =>
            total + ((currentWord.isAlpha() || total >= 3) ? 1 : -total));
    return len >= 3;
  }
}
