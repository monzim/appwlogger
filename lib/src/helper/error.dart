import 'package:appwrite/appwrite.dart';

String getErrorMessage(error, {String? functionId}) {
  if (error is AppwriteException) {
    final errorCode = error.code;
    final errorId = "${DateTime.now().millisecondsSinceEpoch}-$errorCode";

    final name = functionId != null ? "$functionId - " : "AppwriteException";
    final message =
        "🔺 $name: 👉 $errorId - ⛔️ ${error.type}  - ⚠️ ${error.message}";

    return message;
  } else {
    final errorId = "${DateTime.now().millisecondsSinceEpoch}";
    final name = functionId != null ? "$functionId - " : "Error";
    final message = "🔺 $name: 👉 $errorId - ⚠️ $error";
    return message;
  }
}
