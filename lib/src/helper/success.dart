String getSuccessMessage({
  required String functionId,
  String? message,
}) {
  final functionID = "${DateTime.now().millisecondsSinceEpoch}-$functionId";
  final msg =
      "✅ Success: 👉 $functionID ${message != null ? " - 💬 $message" : ""}";
  return msg;
}
