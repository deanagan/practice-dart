library bigger_price;

import 'package:quiver/core.dart';

class Stock {
  String name;
  int price;
  Stock(this.name, this.price);

  @override
  String toString() {
    return 'Stock: $name Price \$$price';
  }

  @override
  bool operator ==(other) =>
      this.name == other.name && this.price == other.price;

  @override
  int get hashCode => hash2(name.hashCode, price.hashCode);
}

class PriceAnalyst {
  List<Stock> biggerPrice(int limit, List<Stock> stocks) {
    stocks.sort((s1, s2) => s2.price.compareTo(s1.price));
    return stocks.take(limit).toList();
  }
}

// main() {
//   var sut = new PriceAnalyst();
//   Function deepEq = const DeepCollectionEquality().equals;
//   // Acts
//   final result = sut.biggerPrice(2, [
//     new Stock("bread", 100),
//     new Stock("wine", 138),
//     new Stock("meat", 15),
//     new Stock("water", 1)
//   ]);
//   // Asserts
//   var match = deepEq(result, [
//     new Stock("wine", 138),
//     new Stock("bread", 100),
//   ]);
//   print(match);
//   print(result);
//   print(IterableEquality().equals([
//     new Stock("wine", 138),
//     new Stock("bread", 100),
//   ], result));

// }
