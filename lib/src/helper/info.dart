String getInfoMessage({
  required String functionId,
  String? message,
}) {
  final functionID = "${DateTime.now().millisecondsSinceEpoch}-$functionId";
  final msg =
      "ℹ️ Info: 👉 $functionID ${message != null ? " - 💬 $message" : ""}";
  return msg;
}
