import 'failure.dart';

sealed class Result<T> {
  const Result();

  bool get isSuccess => this is Success<T>;

  bool get isFailure => this is Error<T>;
}

final class Success<T> extends Result<T> {
  const Success(this.data);

  final T data;
}

final class Error<T> extends Result<T> {
  const Error(this.failure);

  final Failure failure;
}

extension ResultExtension<T> on Result<T> {
  R when<R>({
    required R Function(T data) success,
    required R Function(Failure failure) failure,
  }) {
    final result = this;

    if (result is Success<T>) {
      return success(result.data);
    }

    if (result is Error<T>) {
      return failure(result.failure);
    }

    throw StateError('Unhandled Result state');
  }
}
