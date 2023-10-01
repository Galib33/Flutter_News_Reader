class ExceptionDio implements Exception {
  final String message;

  ExceptionDio(this.message); 

  @override
  String toString() {
    return message;
  }
}
