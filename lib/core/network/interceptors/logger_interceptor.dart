import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class LoggerInterceptor extends Interceptor {
  LoggerInterceptor();

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) {
    if (kDebugMode) {
      debugPrint('────────────────────────────');
      debugPrint('REQUEST');

      debugPrint('${options.method} ${options.uri}');

      debugPrint('Headers');

      debugPrint(
        const JsonEncoder.withIndent(
          '  ',
        ).convert(options.headers),
      );

      if (options.queryParameters.isNotEmpty) {
        debugPrint('Query');

        debugPrint(
          const JsonEncoder.withIndent(
            '  ',
          ).convert(options.queryParameters),
        );
      }

      if (options.data != null) {
        debugPrint('Body');

        debugPrint(
          const JsonEncoder.withIndent(
            '  ',
          ).convert(options.data),
        );
      }

      debugPrint('────────────────────────────');
    }

    handler.next(options);
  }

  @override
  void onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) {
    if (kDebugMode) {
      debugPrint('────────────────────────────');
      debugPrint('RESPONSE');

      debugPrint(
        '${response.statusCode} ${response.requestOptions.uri}',
      );

      debugPrint(
        const JsonEncoder.withIndent(
          '  ',
        ).convert(response.data),
      );

      debugPrint('────────────────────────────');
    }

    handler.next(response);
  }

  @override
  void onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) {
    if (kDebugMode) {
      debugPrint('────────────────────────────');

      debugPrint('ERROR');

      debugPrint(
        '${err.response?.statusCode}',
      );

      debugPrint(
        err.requestOptions.uri.toString(),
      );

      if (err.response?.data != null) {
        debugPrint(
          const JsonEncoder.withIndent(
            '  ',
          ).convert(
            err.response!.data,
          ),
        );
      }

      debugPrint(err.message);

      debugPrint('────────────────────────────');
    }

    handler.next(err);
  }
}
