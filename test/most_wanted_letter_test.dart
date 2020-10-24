import "package:test/test.dart";
import "package:practicedart/most_wanted_letter.dart";

class TestParameter {
  String text;
  String mostWanted;

  TestParameter(this.text, this.mostWanted);

  @override
  String toString() {
    return """the text: $text's most wanted letter is '$mostWanted'""";
  }
}

main() {
  group("Three words test: ", () {
    List<TestParameter> testParameters = [
      new TestParameter("Hello World!", "l"),
      new TestParameter("How do you do?", "o"),
      new TestParameter("One", "e"),
    ];

    testParameters.forEach((tp) {
      test("Expect ${tp}", () {
        // Arrange
        var sut = new MostWantedLetter();
        // Acts
        final result = sut.getMostWanted(tp.text);
        // Asserts
        expect(result, tp.mostWanted);
      });
    });
  });
}
