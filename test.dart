void main() {
  print("Hello, World!dasdasdddsssssssssssssssssssssssss");
  print('Goodbye!');

  int cost = 4;

  var product = "fish";
  print("the price of ${product.toUpperCase()} is \$${cost}!");

  print("cool benas ${2.000.remainder(4)}");

  switch (cost) {
    case 5:
      print("hello");
      break;
    case 4:
      break;
    default:
      print("Dssdf");
  }

  switch (product) {
    case "fish":
      print("stinky");
      break;
    default:
      break;
  }

  if (product == "fish") {
  } else if (product == "beer") {}

  var names = ["Tito", "Vic", "Joey"];

  for (var i = 0; i < names.length; ++i) {
    print("hello ${names[i]}");
  }

  for (var n in names) {
    print(n);
  }

  var f = (true) ? 1 : -1;
  var ft = null ?? 9;
  print("$f, $ft");
  print(sum(2, 3));

  var c = new Coordinate(1, 2);
  print(c.TotalPoints());

  print(c.toString());

  var summer = (var a, [var b]) => a + (b ?? 0);

  print(summer(343, 2));
  print(summer(343));

  var squared = (int a) => a * a;

  print(squared(5));

  int d = 2;
  int ff = 2;
  sum(d, ff);
  print(d);
}

int sum(int x, int y) {
  x++;
  return x + y;
}

class Coordinate {
//  int x, int y;
  Coordinate(int x, int y) {
    //  x = x;
    // y = y;
  }

  int TotalPoints() {
    //return x + y;
    return 20;
  }

  String toString() {
    return "I'm cool";
  }
}
