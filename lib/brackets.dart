import 'dart:collection';

class Brackets {
  bool isValid(String input) {
    var queue = new Queue();
    var bracketMap = {'{': '}', '(': ')', '[': ']'};

    queue.add('\0');
    for (var ch in [...input.split('')]) {
      if (bracketMap.containsKey(ch)) {
        queue.add(bracketMap[ch]);
      } else if (bracketMap.containsValue(ch) && (ch != queue.removeLast())) {
        return false;
      }
    }

    return (queue.length == 1) && (queue.first == '\0');
  }
}
