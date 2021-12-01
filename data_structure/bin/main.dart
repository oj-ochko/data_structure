import 'package:data_structure/queue.dart';

void main() {
  var queue = QueueList();
  queue.enqueue(10);
  print(queue);
  queue.enqueue(9);
  print(queue);
  queue.enqueue(12);
  print(queue);
  queue.enqueue(113);
  print(queue);
}
