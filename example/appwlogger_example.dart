import 'package:appwlogger/appwlogger.dart';

void main() {
  final error = Error();
  var awesome = Appwlogger();
  awesome.error(error);
  final k = awesome.log('awesome.log', message: 'awesome.message');
}
