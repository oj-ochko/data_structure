import 'package:ring_buffer/ring_buffer.dart';

class RingBuffer<E> {
  RingBuffer(int length) : _list = List.filled(length, null, growable: false);

  final List<E?> _list;

  int _length = 0;

  int _readIndex = 0;
  int _writeIndex = 0;

  bool get isEmpty => _length == 0;
  bool get isFull => _length == _list.length;

  bool write(E value) {
    if (isFull) {
      return false;
    }
    _list[_writeIndex] = value;
    moveWriteIndex();
    _length++;
    return true;
  }

  void moveWriteIndex() {
    if (_writeIndex == _list.length - 1) {
      _writeIndex = 0;
    } else {
      _writeIndex += 1;
    }
  }

  E? read() {
    if (isEmpty) {
      return null;
    }
    final value = _list[_readIndex];
    moveReadIndex();
    return value;
  }

  void moveReadIndex() {
    if (_readIndex == _list.length - 1) {
      _readIndex = 0;
    } else {
      _readIndex += 1;
    }
  }

  @override
  String toString() {
    // TODO: implement toString
    return _list.toString();
  }
}
