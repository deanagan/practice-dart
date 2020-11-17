import "package:test/test.dart";
import "../lib/sorter.dart";

void main() {
  group("Reverse ascending sort test:", () {
    var testParametersToExpectedResult = {
      [1, 2, 3, 4, 5]: [5, 4, 3, 2, 1],
      [5, 7, 10, 4, 2, 7, 8, 1, 3]: [10, 7, 5, 4, 8, 7, 2, 3, 1],
      [5, 4, 3, 2, 1]: [5, 4, 3, 2, 1],
      []: [],
      [1]: [1],
      [1, 1]: [1, 1],
      [1, 1, 2]: [1, 2, 1],
      [1, 2, 2, 3]: [2, 1, 3, 2],
    };

    testParametersToExpectedResult.forEach((input, expected) {
      test("$input should return $expected", () {
        // Arrange
        var sut = new Sorter();
        // Acts
        final result = sut.sortReverseAscending(input);
        // Asserts
        expect(result, expected);
      });
    });
  });
}
