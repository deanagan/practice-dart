import 'package:practicedart/popular_words.dart';
import "package:test/test.dart";
import "package:practicedart/stressful_subject.dart";

class TestParameter {
  String input;
  List<String> popularWords;
  Map<String, int> results;

  TestParameter(this.input, this.popularWords, this.results);

  @override
  String toString() {
    return """
        The input: $input with words $popularWords will return $results
        """;
  }
}

void main() {
  group("Popular words test: ", () {
    List<TestParameter> testParameters = [
      new TestParameter('''
            When I was One
            I had just begun
            When I was Two
            I was nearly new
            ''', ['i', 'was', 'three', 'near'],
          {'i': 4, 'was': 3, 'three': 0, 'near': 0}),
    ];

    testParameters.forEach((tp) {
      test("Expect ${tp}", () {
        // Arrange
        var sut = new PopularWords();
        // Acts
        final result = sut.getCounts(tp.input, tp.popularWords);
        // Asserts
        expect(result, tp.results);
      });
    });
  });
}
