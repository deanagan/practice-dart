void main() {
  var input = "[hello]";
  var left_marker = "[";
  var right_marker = "]";

  print(input.substring(
      input.indexOf(left_marker) + 1, input.indexOf(right_marker)));
}
