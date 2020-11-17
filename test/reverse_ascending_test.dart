import "package:test/test.dart";
import "../lib/sorter.dart";

class TestParameter {
  List<int> input;
  List<int> expected;

  TestParameter(this.input, this.expected);

  @override
  String toString() {
    return """
        The input: $input will return $expected
        """;
  }
}

void main() {
  group("Reverse ascending sort test:", () {
    var testParameters = {
      TestParameter([1, 2, 3, 4, 5], [5, 4, 3, 2, 1]),
      TestParameter([5, 7, 10, 4, 2, 7, 8, 1, 3], [10, 7, 5, 4, 8, 7, 2, 3, 1]),
      TestParameter([5, 4, 3, 2, 1], [5, 4, 3, 2, 1]),
      TestParameter([], []),
      TestParameter([1], [1]),
      TestParameter([1, 1], [1, 1]),
      TestParameter([1, 1, 2], [1, 2, 1]),
      TestParameter([1, 2, 2, 3], [2, 1, 3, 2]),
    };

    testParameters.forEach((tp) {
      test("Expect $tp", () {
        // Arrange
        var sut = new Sorter();
        // Acts
        final result = sut.sortReverseAscending(tp.input);
        // Asserts
        expect(result, tp.expected);
      });
    });
  });
}
