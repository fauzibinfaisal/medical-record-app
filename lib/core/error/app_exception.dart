abstract class AppException implements Exception {
  const AppException({
    required this.message,
    this.statusCode,
  });

  final String message;
  final int? statusCode;

  @override
  String toString() {
    return '$runtimeType(message: $message, statusCode: $statusCode)';
  }
}

class NetworkException extends AppException {
  const NetworkException({
    super.message = 'No internet connection.',
  });
}

class UnauthorizedException extends AppException {
  const UnauthorizedException({
    super.message = 'Unauthorized.',
    super.statusCode = 401,
  });
}

class ForbiddenException extends AppException {
  const ForbiddenException({
    super.message = 'Forbidden.',
    super.statusCode = 403,
  });
}

class NotFoundException extends AppException {
  const NotFoundException({
    super.message = 'Resource not found.',
    super.statusCode = 404,
  });
}

class ValidationException extends AppException {
  const ValidationException({
    required super.message,
    super.statusCode = 400,
  });
}

class ServerException extends AppException {
  const ServerException({
    super.message = 'Internal server error.',
    super.statusCode = 500,
  });
}

class TimeoutException extends AppException {
  const TimeoutException({
    super.message = 'Request timeout.',
  });
}

class CacheException extends AppException {
  const CacheException({
    super.message = 'Cache error.',
  });
}

class UnknownException extends AppException {
  const UnknownException({
    super.message = 'Unknown error.',
  });
}
