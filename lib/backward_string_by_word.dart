library backward_string_by_word;

class BackwardStringByWord {
  String ReverseByWord(String input) {
    return input.split(' ').map((e) => e.split('').reversed.join('')).join(' ');
  }
}
