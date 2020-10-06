library between_markers;

class BetweenMarkers {
  String left_marker;
  String right_marker;

  BetweenMarkers(this.left_marker, this.right_marker);

  String GetValue(String input) {
    return input.substring(
        input.indexOf(this.left_marker) + 1, input.indexOf(right_marker));
  }
}
