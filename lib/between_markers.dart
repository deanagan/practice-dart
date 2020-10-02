class BetweenMarkers {
  String left_marker;
  String right_marker;

  BetweenMarkers(this.left_marker, this.right_marker);

  String GetValue(String input) {
    //return line.slice(line.indexOf(left) + 1, line.indexOf(right))
    return input.substring(
        input.indexOf(this.left_marker) + 1, input.indexOf(right_marker));
  }
}
