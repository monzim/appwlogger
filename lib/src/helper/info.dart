String getInfoMessage({
  required String functionId,
  String? message,
}) {
  final functionID = "${DateTime.now().millisecondsSinceEpoch}-$functionId";
  final msg =
      "âšī¸ Info: đ $functionID ${message != null ? " - đŦ $message" : ""}";
  return msg;
}
