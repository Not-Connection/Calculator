part of '_index.dart';

class IncreaseException implements Exception {
  String message;
  IncreaseException(this.message);

  @override
  String toString() => message;
}

class RandomException implements Exception {
  String message;
  RandomException(this.message);

  @override
  String toString() => message;
}
