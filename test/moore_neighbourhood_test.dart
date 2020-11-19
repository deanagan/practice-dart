import "package:test/test.dart";
import '../lib/moore_neighborhood.dart';

class TestParameter {
  List<List<int>> matrix;
  int row;
  int col;
  int expected;

  TestParameter(this.matrix, this.row, this.col, this.expected);

  @override
  String toString() {
    return """($this.row, $this.col) in matrix: $matrix has $expected neighbours.""";
  }
}

main() {
  group("Moore neighourhood test: ", () {
    List<TestParameter> testParameters = [
      new TestParameter([
        [1, 0, 0, 1, 0],
        [0, 1, 0, 0, 0],
        [0, 0, 1, 0, 1],
        [1, 0, 0, 0, 0],
        [0, 0, 1, 0, 0]
      ], 1, 2, 3),
      new TestParameter([
        [1, 0, 0, 1, 0],
        [0, 1, 0, 0, 0],
        [0, 0, 1, 0, 1],
        [1, 0, 0, 0, 0],
        [0, 0, 1, 0, 0],
      ], 0, 0, 1),
      new TestParameter([
        [1, 1, 1],
        [1, 1, 1],
        [1, 1, 1],
      ], 0, 2, 3),
      new TestParameter([
        [0, 0, 0],
        [0, 1, 0],
        [0, 0, 0],
      ], 1, 1, 0),
    ];

    testParameters.forEach((tp) {
      test("Expect ${tp}", () {
        // Arrange
        var sut = Moore();
        // Act
        final count = sut.countNeighbors(tp.matrix, tp.row, tp.col);
        // Assert
        expect(tp.expected, count);
      });
    });
  });
}
