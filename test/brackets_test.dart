import 'package:test/test.dart';
import "package:practicedart/brackets.dart";

class TestParameter {
  String input;
  bool isValid;

  TestParameter(this.input, this.isValid);

  @override
  String toString() {
    return '${this.isValid ? 'valid' : 'not valid'} for input "${this.input}"';
  }
}

var testParameters = [
  new TestParameter("()[]{}", true),
  new TestParameter("(]", false),
  new TestParameter("([)]", false),
  new TestParameter("{[]}", true),
  new TestParameter("){", false),
  new TestParameter("]", false),
  new TestParameter("(])", false),
];

void main() {
  group("Brackets test", () {
    testParameters.forEach((element) {
      test('should return $element', () {
        // Arrange
        var brackets = new Brackets();
        // Act
        final isValid = brackets.isValid(element.input);
        // Assert
        expect(isValid, element.isValid);
      });
    });
  });
}
