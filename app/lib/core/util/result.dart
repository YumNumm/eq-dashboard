import 'dart:async';

sealed class Result<V, E extends Exception> {
  const Result();

  factory Result.success(V value) = Success<V, E>;
  factory Result.error(E error) = Failure<V, E>;

  static Future<Result<V, E>> capture<V, E extends Exception>(
    FutureOr<V> Function() fn,
  ) async {
    try {
      return Result.success(await fn());
    } on E catch (e) {
      return Result.error(e);
    }
  }
}

class Success<V, E extends Exception> extends Result<V, E> {
  const Success(this.value);

  final V value;
}

class Failure<V, E extends Exception> extends Result<V, E> {
  const Failure(this.error);

  final E error;
}
