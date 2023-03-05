import 'package:appwlogger/src/helper/error.dart';
import 'package:appwlogger/src/helper/info.dart';
import 'package:appwlogger/src/helper/success.dart';
import 'package:appwlogger/src/helper/warning.dart';
import 'package:appwlogger/src/log/error_log.dart';
import 'package:appwlogger/src/log/info_log.dart';
import 'package:appwlogger/src/log/success_log.dart';
import 'package:appwlogger/src/log/warning_log.dart';

abstract class AppwloggerBase {
  String log(String functionId, {String? message});
  String info(String functionId, {String? message});
  String error(dynamic error, {String? functionId});
  String warning(String functionId, {String? message});
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

  @override
  String info(String functionId, {String? message, bool isDebug = true}) {
    if (isDebug) infoLog(functionId, message: message);
    return getInfoMessage(functionId: functionId, message: message);
  }

  @override
  String warning(String functionId, {String? message, bool isDebug = true}) {
    if (isDebug) warningLog(functionId, message: message);
    return getWarningMessage(functionId: functionId, message: message);
  }
}
