import "package:test/test.dart";
import 'package:tuple/tuple.dart';
import "package:practicedart/disconnected_users.dart";

class TestParameter {
  List<Tuple2<String, String>> edges;
  Map<String, int> nodeValues;
  String source;
  List<String> crushes;
  int expected;
  TestParameter(
      this.edges, this.nodeValues, this.source, this.crushes, this.expected);
  @override
  String toString() {
    return """
        With Edges ${edges}, mapped to values ${nodeValues} and
        having source ${source} where crushes are ${crushes}
        """;
  }
}

void main() {
  group("Disconnected users should return data correctly:", () {
    List<TestParameter> testParameters = [
      new TestParameter(
          [
            const Tuple2<String, String>('A', 'B'),
            const Tuple2<String, String>('B', 'C'),
            const Tuple2<String, String>('C', 'D'),
          ],
          {'A': 10, 'B': 20, 'C': 30, 'D': 40},
          'A',
          ['C'],
          70),
      new TestParameter(
          [
            const Tuple2<String, String>('A', 'B'),
            const Tuple2<String, String>('B', 'D'),
            const Tuple2<String, String>('A', 'C'),
            const Tuple2<String, String>('C', 'D'),
          ],
          {'A': 10, 'B': 0, 'C': 0, 'D': 40},
          'A',
          ['B'],
          0),
      new TestParameter(
          [
            const Tuple2<String, String>('A', 'B'),
            const Tuple2<String, String>('A', 'C'),
            const Tuple2<String, String>('A', 'D'),
            const Tuple2<String, String>('A', 'E'),
            const Tuple2<String, String>('A', 'F')
          ],
          {'A': 10, 'B': 10, 'C': 10, 'D': 10, 'E': 10, 'F': 10},
          'C',
          ['A'],
          50),
      new TestParameter(
          [
            const Tuple2<String, String>('A', 'B'),
            const Tuple2<String, String>('B', 'C'),
            const Tuple2<String, String>('C', 'D')
          ],
          {'A': 10, 'B': 20, 'C': 30, 'D': 40},
          'A',
          ['A'],
          100),
    ];

    testParameters.forEach((tp) {
      test("$tp should return ${tp.expected}", () {
        // Arrange
        var sut = new NetworkInfo(tp.edges, tp.nodeValues);
        // Acts
        final result = sut.disconnectedUsers(tp.source, tp.crushes);
        // Asserts
        expect(result, tp.expected);
      });
    });
  });
}
