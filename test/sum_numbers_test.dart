import "package:test/test.dart";
import "../lib/sum_numbers.dart";

class TestParameter {
  String text;
  int expected;

  TestParameter(this.text, this.expected);

  @override
  String toString() {
    return """the text: $text has total $expected""";
  }
}

main() {
  group("Sum numbers test: ", () {
    List<TestParameter> testParameters = [
      new TestParameter("hi", 0),
    ];

    testParameters.forEach((tp) {
      test("Expect ${tp}", () {
        // Arrange
        var sut = new SumNumbers();
        // Acts
        final result = sut.total(tp.text);
        // Asserts
        expect(result, tp.expected);
      });
    });
  });
}
