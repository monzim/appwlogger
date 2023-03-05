import 'package:appwlogger/src/helper/info.dart';

void infoLog(functionId, {String? message}) {
  final msg = getInfoMessage(functionId: functionId, message: message);

  print(msg);
}
