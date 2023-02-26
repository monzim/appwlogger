import 'package:appwlogger/appwlogger.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    final awesome = Appwlogger();

    setUp(() {
      // Additional setup goes here.
    });

    test('First Test', () {
      awesome.log('test');
    });
  });
}
