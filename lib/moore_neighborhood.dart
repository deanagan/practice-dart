library moore;

import 'package:tuple/tuple.dart';

// In cellular automata, the Moore neighborhood comprises the eight cells
// surrounding a central cell on a two-dimensional square lattice. The
// neighborhood is named after Edward F. Moore, a pioneer of cellular automata
// theory. Many board games are played on a rectangular grid with squares as
// cells. For some games, it is important to know the conditions of neighbouring
// cells for chip (figure, draught, checker, etc) placement and strategy.

// You are given a state for a rectangular board game grid with chips in a
// binary matrix, where 1 is a cell with a chip and 0 is an empty cell.
// You are also given the coordinates for a cell in the form of row and column
// numbers (starting from 0). You should determine how many chips are close to
// this cell. Every cell interacts with its eight neighbours; those cells that
// are horizontally, vertically, or diagonally adjacent.
class Moore {
  static const List<Tuple2<int, int>> offsets = [
    Tuple2(-1, -1),
    Tuple2(-1, 0),
    Tuple2(-1, 1),
    Tuple2(0, -1),
    Tuple2(0, 1),
    Tuple2(1, -1),
    Tuple2(1, 0),
    Tuple2(1, 1)
  ];

  int countNeighbors(List<List<int>> matrix, int row, int col) {
    return 0;
  }
}

main(List<String> args) {
  var m = Moore();
  print(m.countNeighbors([
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ], 1, 1));
}
