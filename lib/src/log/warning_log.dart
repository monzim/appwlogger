import 'package:appwlogger/src/helper/warning.dart';

void warningLog(functionId, {String? message}) {
  final msg = getWarningMessage(functionId: functionId, message: message);

  print(msg);
}
