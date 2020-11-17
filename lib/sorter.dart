library sorting_utility;

import 'package:stack/stack.dart';

extension StackPopper on Stack<int> {
  Iterable<int> popAll() sync* {
    while (this.isNotEmpty) {
      yield this.pop();
    }
  }
}

class Sorter {
  List<int> sortReverseAscending(List<int> numbers) {
    var stack = Stack<int>();
    var result = List<int>();

    numbers.forEach((element) {
      if (stack.isNotEmpty && stack.top() >= element) {
        result.addAll(stack.popAll());
      }
      stack.push(element);
    });

    result.addAll(stack.popAll());
    return result;
  }
}
