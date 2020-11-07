import "package:test/test.dart";
import "../lib/most_wanted_letter.dart";

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
  group("Most wanted letters test: ", () {
    List<TestParameter> testParameters = [
      new TestParameter("Hello World!", "l"),
      new TestParameter("How do you do?", "o"),
      new TestParameter("One", "e"), // return last if tied
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
