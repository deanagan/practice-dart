import 'package:test/test.dart';
import '../lib/cipher_crossword.dart';

class TestParameter {
  List<List<int>> input;
  List<String> words;
  List<List<String>> expected;

  TestParameter(this.input, this.words, this.expected);

  @override
  String toString() {
    return """
    Crossword $input with words $words expected $expected
    """;
  }
}

main() {
  group("Cipher Crossword Test", () {
    List<TestParameter> testParameters = [
      new TestParameter([
        [21, 6, 25, 25, 17],
        [14, 0, 6, 0, 2],
        [1, 11, 16, 1, 17],
        [11, 0, 16, 0, 5],
        [26, 3, 14, 20, 6]
      ], [
        'hello',
        'habit',
        'lemma',
        'ozone',
        'bimbo',
        'trace'
      ], [
        ['h', 'e', 'l', 'l', 'o'],
        ['a', ' ', 'e', ' ', 'z'],
        ['b', 'i', 'm', 'b', 'o'],
        ['i', ' ', 'm', ' ', 'n'],
        ['t', 'r', 'a', 'c', 'e']
      ]),
    ];

    testParameters.forEach((testParameter) {
      test("Expect $testParameter", () {
        // Arrange
        var sut = CipherCrossword();
        // Act
        final result =
            sut.decipherPuzzle(testParameter.input, testParameter.words);
        // Assert
        expect(testParameter.expected, result);
      });
    });
  });
}
