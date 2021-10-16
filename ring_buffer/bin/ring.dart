import 'package:ring_buffer/ring_buffer.dart';

void main() {
  var list = Ring();
  for (var i = 9; i >= 0; i--) {
    list.add(i);
  }
  print(list);

  list.add(77);
  list.add(77);
  list.add(77);
  list.add(77);
  print(list);

  for (var i = 0; i < 10; i++) {
    var value = list.read();
    print(value);
  }

  var value = list.read();
  print(value);

  int i = 0;
  while (i < 10) {
    list.add(77);
    if (i == 1) list.add("It Works!");
    i += 1;
  }
  print(list);
}