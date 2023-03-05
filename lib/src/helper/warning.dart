String getWarningMessage({
  required String functionId,
  String? message,
}) {
  final functionID = "${DateTime.now().millisecondsSinceEpoch}-$functionId";
  final msg =
      "⚠️ Warning: 👉 $functionID ${message != null ? " - 💬 $message" : ""}";
  return msg;
}
