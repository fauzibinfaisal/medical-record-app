import 'package:dio/dio.dart';

import 'app_exception.dart';
import 'failure.dart';

class ExceptionMapper {
  ExceptionMapper._();

  static Failure map(Object error) {
    if (error is Failure) {
      return error;
    }

    if (error is AppException) {
      return Failure(
        message: error.message,
        code: error.statusCode,
      );
    }

    if (error is DioException) {
      return _mapDioException(error);
    }

    return const Failure(
      message: 'Unexpected error occurred.',
    );
  }

  static Failure _mapDioException(DioException exception) {
    switch (exception.type) {
      case DioExceptionType.connectionTimeout:
        return const Failure(
          message: 'Connection timeout.',
        );

      case DioExceptionType.sendTimeout:
        return const Failure(
          message: 'Send timeout.',
        );

      case DioExceptionType.receiveTimeout:
        return const Failure(
          message: 'Receive timeout.',
        );

      case DioExceptionType.connectionError:
        return const Failure(
          message: 'No internet connection.',
        );

      case DioExceptionType.cancel:
        return const Failure(
          message: 'Request cancelled.',
        );

      case DioExceptionType.badCertificate:
        return const Failure(
          message: 'Bad certificate.',
        );

      case DioExceptionType.badResponse:
        return _mapStatusCode(exception);

      default:
        return const Failure(
          message: 'Unknown network error.',
        );
    }
  }

  static Failure _mapStatusCode(DioException exception) {
    final int statusCode = exception.response?.statusCode ?? 0;

    final dynamic response = exception.response?.data;

    String message = 'Request failed.';

    if (response is Map<String, dynamic>) {
      if (response['error'] != null) {
        message = response['error'].toString();
      }

      if (response['message'] != null) {
        message = response['message'].toString();
      }
    }

    return Failure(
      message: message,
      code: statusCode,
    );
  }
}
