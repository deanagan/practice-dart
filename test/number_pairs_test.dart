import "package:test/test.dart";
import "package:practicedart/number_pairs.dart";

class TestParameter {
  List<int> numbers;
  int denominator;
  int expected;

  TestParameter(this.numbers, this.denominator, this.expected);

  @override
  String toString() {
    return """
    total pairs for: $numbers with denominator $denominator to be '$expected'
    """;
  }
}

main() {
  group("Number pairs test: ", () {
    List<TestParameter> testParameters = [
      new TestParameter([5, 25, 45, 15], 30, 2),
      new TestParameter([30, 30, 30], 30, 3),
      new TestParameter([17, 13, 30], 30, 1),
      new TestParameter([338, 172, 7, 3, 29, 1], 30, 2),
    ];

    testParameters.forEach((tp) {
      test("Expect ${tp}", () {
        // Arrange
        var sut = new NumberPairs(tp.numbers);
        // Acts
        final result = sut.getTotalNumberPairs(tp.denominator);
        // Asserts
        expect(result, tp.expected);
      });
    });
  });
}
