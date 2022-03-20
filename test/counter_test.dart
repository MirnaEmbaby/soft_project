import 'package:flutter_test/flutter_test.dart';
import 'package:soft_project/counter.dart';

void main() {
  test('Counter value should be incremented', () {
    final counter = Counter();

    counter.increment();

    expect(counter.value, 1);
  });
}