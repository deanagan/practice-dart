library disconnected_users;

import 'package:tuple/tuple.dart';

class Node {
  String name;
  int count;
  var connections = <Node>[];
  Node(this.name, this.count);

  String toString() {
    return "${this.name} - ${this.count}";
  }
}

class NetworkInfo {
  List<Tuple2<String, String>> edges;
  Map<String, Node> nodeLookUp;

  NetworkInfo(List<Tuple2<String, String>> edges, Map<String, int> nodeValues) {
    // Create lookup using node class from node values
    nodeLookUp = nodeValues.map((key, value) {
      return MapEntry(key, new Node(key, value));
    });

    this.edges = edges;
    this.edges.forEach((t) {
      nodeLookUp[t.item1].connections.add(nodeLookUp[t.item2]);
    });
  }

  int disconnectedUsers(String source, List<String> crushes) {
    // if source is in crushes, let's return sum of all nodes
    if (crushes.contains(source)) {
      return nodeLookUp.values.fold(0, (t, c) => t + c.count);
    }

    var visited = getVisitedNodes(source, crushes);

    return nodeLookUp.values
        .where((n) => !visited.contains(n.name))
        .fold(0, (t, c) => t + c.count);
  }

  List<String> getVisitedNodes(String source, List<String> crushes) {
    var visited = <String>[];
    var connected = <Node>[];

    connected.add(nodeLookUp[source]);
    while (connected.isNotEmpty) {
      var node = connected.removeLast();
      visited.add(node.name);
      connected.addAll(
          node.connections.where((element) => !crushes.contains(element.name)));
    }
    return visited;
  }
}

main() {
  var edges = [
    const Tuple2<String, String>('A', 'B'),
    const Tuple2<String, String>('B', 'C'),
    const Tuple2<String, String>('C', 'D'),
  ];
  var nodeValues = {'A': 10, 'B': 20, 'C': 30, 'D': 40};

  var sut = new NetworkInfo(edges, nodeValues);
  // Acts
  final result = sut.disconnectedUsers('A', ['C']);

  print(result);
}
