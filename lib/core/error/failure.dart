class Failure {
  const Failure({
    required this.message,
    this.code,
  });

  final String message;
  final int? code;

  @override
  String toString() {
    return 'Failure(message: $message, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    return other is Failure && other.message == message && other.code == code;
  }

  @override
  int get hashCode {
    return Object.hash(
      message,
      code,
    );
  }
}
