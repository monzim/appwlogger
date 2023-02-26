import 'package:appwlogger/src/helper/error.dart';

void logError(dynamic error, {String? functionId}) {
  final message = getErrorMessage(error, functionId: functionId);
  print(message);
}
