import 'package:appwlogger/src/helper/success.dart';

void successLog(functionId, {String? message}) {
  final msg = getSuccessMessage(functionId: functionId, message: message);

  print(msg);
}
