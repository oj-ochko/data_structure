import 'dart:math';

import 'package:ring_buffer/ringBuffer.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test("writing", () {
    final ringBuffer = RingBuffer<int>(4);
    expect(ringBuffer.write(0), true);
    expect(ringBuffer.write(0), true);
    expect(ringBuffer.write(0), true);
    expect(ringBuffer.write(0), true);
    expect(ringBuffer.write(0), false);
    expect(ringBuffer.isFull, true);
  });
  test('reading value', () {
    final ringBuffer = RingBuffer<int>(4);
    var value = ringBuffer.read();
    expect(value, null);
    ringBuffer.write(22);
    value = ringBuffer.read();
    expect(value, 22);

    ringBuffer.write(10);
    ringBuffer.write(11);
    ringBuffer.write(12);
    ringBuffer.write(13);

    value = ringBuffer.read();

    expect(value, 10);
  });
}
