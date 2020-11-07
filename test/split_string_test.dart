import "package:test/test.dart";
import "package:practicedart/split_string.dart";

class TestParameter {
  String input;
  List<String> expected;

  TestParameter(this.input, this.expected);

  @override
  String toString() {
    return """
        The input: $input split by 2 results in $expected
        """;
  }
}

void main() {
  group("Split string test: ", () {
    List<TestParameter> testParameters = [
      new TestParameter('abcd', ['ab', 'cd']),
      new TestParameter('abc', ['ab', 'c_']),
    ];

    testParameters.forEach((tp) {
      test("Expect ${tp}", () {
        // Arrange
        var sut = new StringSplitter();
        // Acts
        final result = sut.split(tp.input);
        // Asserts
        expect(result, tp.expected);
      });
    });
  });
}
