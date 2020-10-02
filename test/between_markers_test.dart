import "package:test/test.dart";
import "package:practicedart/between_markers.dart";

void main() {
  group("Between markers should return data correctly:", () {
    var testParametersToExpectedResult = {
      ['What is >apple<', '>', '<']: 'apple',
      ['What is [apple]', '[', ']']: 'apple',
      ['What is ><', '>', '<']: '',
      ['[an apple]', '[', ']']: 'an apple',
    };

    testParametersToExpectedResult.forEach((input, expected) {
      test("$input should return $expected", () {
        // Arrange
        var sut = new BetweenMarkers(input[1], input[2]);
        // Acts
        final result = sut.GetValue(input[0]);
        // Asserts
        expect(result, expected);
      });
    });
  });
}
