import 'package:data_structure/graph.dart';

void main() {
  var graph = Graph();
  final a = graph.createVertex("A");
  final b = graph.createVertex("B");
  final c = graph.createVertex("C");
  graph.addEdge(a, b, 5);
  print(graph);
}
