import "package:test/test.dart";
import "package:practicedart/three_words.dart";

class TestParameter {
  String text;
  bool isThreeOrMore;

  TestParameter(this.text, this.isThreeOrMore);

  @override
  String toString() {
    return """The text: $text ${isThreeOrMore ? 'has' : 'has no'} 3 consecutive non digit words.""";
  }
}

main() {
  group("Three words test", () {
    List<TestParameter> testParameters = [
      new TestParameter("Hello World hello", true),
      new TestParameter("He is 123 man", false)
    ];

    testParameters.forEach((tp) {
      test("Expect ${tp}", () {
        // Arrange
        var sut = new WordAnalyzer();
        // Acts
        final result = sut.has3ConsecutiveWords(tp.text);
        // Asserts
        expect(result, tp.isThreeOrMore);
      });
    });
  });
}
