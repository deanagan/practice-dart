import "package:test/test.dart";
import 'package:collection/collection.dart';
import "package:practicedart/bigger_price.dart";

class TestParameter {
  int limit;
  List<Stock> stocks;
  List<Stock> limitedStocks;

  TestParameter(this.limit, this.stocks, this.limitedStocks);

  @override
  String toString() {
    return """
        Limiting $stocks to top $limit should yield $limitedStocks
        """;
  }
}

void main() {
  group("Disconnected users should return data correctly:", () {
    List<TestParameter> testParameters = [
      new TestParameter(2, [
        new Stock("bread", 100),
        new Stock("wine", 138),
        new Stock("meat", 15),
        new Stock("water", 1)
      ], [
        new Stock("wine", 138),
        new Stock("bread", 100),
      ]),
      new TestParameter(1, [
        new Stock("pen", 5),
        new Stock("whiteboard", 170),
      ], [
        new Stock("whiteboard", 170),
      ]),
    ];

    testParameters.forEach((tp) {
      test("$tp should return ${tp.limitedStocks}", () {
        // Arrange
        var sut = new PriceAnalyst();
        // Acts
        final result = sut.biggerPrice(tp.limit, tp.stocks);
        // Asserts
        expect(IterableEquality().equals(result, tp.limitedStocks), true);
      });
    });
  });
}
