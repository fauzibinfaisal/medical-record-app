class ApiResponse<T> {
  const ApiResponse({
    required this.data,
    this.message,
    this.statusCode,
  });

  final T data;

  final String? message;

  final int? statusCode;

  ApiResponse<T> copyWith({
    T? data,
    String? message,
    int? statusCode,
  }) {
    return ApiResponse<T>(
      data: data ?? this.data,
      message: message ?? this.message,
      statusCode: statusCode ?? this.statusCode,
    );
  }
}
