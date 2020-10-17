import "package:test/test.dart";
import "package:practicedart/backward_string_by_word.dart";

void main() {
  group("Backward string by word test:", () {
    var testParametersToExpectedResult = {
      '': '',
      'world': 'dlrow',
      'hello world': 'olleh dlrow',
      'hello   world': 'olleh   dlrow',
      'welcome to a game': 'emoclew ot a emag',
    };

    testParametersToExpectedResult.forEach((input, expected) {
      test("$input should return $expected", () {
        // Arrange
        var sut = new BackwardStringByWord();
        // Acts
        final result = sut.ReverseByWord(input);
        // Asserts
        expect(result, expected);
      });
    });
  });
}
