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
      new TestParameter('who is 1st here', 0),
      new TestParameter('my numbers is 2', 2),
      new TestParameter('''This picture is an oil on canvas
                           painting by Danish artist Anna '
                           Petersen between 1845 and 1910 year''', 3755),
      new TestParameter('5 plus 6 is', 11),
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
