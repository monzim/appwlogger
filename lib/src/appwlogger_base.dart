import 'package:appwlogger/src/helper/error.dart';
import 'package:appwlogger/src/helper/success.dart';
import 'package:appwlogger/src/log/error_log.dart';
import 'package:appwlogger/src/log/success_log.dart';

abstract class AppwloggerBase {
  String log(String functionId, {String? message});
  String error(dynamic error, {String? functionId});
}

class Appwlogger implements AppwloggerBase {
  @override
  String error(error, {String? functionId, bool isDebug = true}) {
    if (isDebug) logError(error, functionId: functionId);
    return getErrorMessage(error, functionId: functionId);
  }

  @override
  String log(String functionId, {String? message, bool isDebug = true}) {
    if (isDebug) successLog(functionId, message: message);
    return getSuccessMessage(functionId: functionId, message: message);
  }
}
