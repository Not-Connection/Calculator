part of '_index.dart';

final logx = LogWithoutType();
final logxx = LogWithType();

class LogWithoutType {
  void i(String msg) => developer.log('\x1B[37m$msg\x1B[0m', name: '...');
  void s(String msg) => developer.log('\x1B[32m$msg\x1B[0m', name: '...');
  void w(String msg) => developer.log('\x1B[33m$msg\x1B[0m', name: '...');
  void e(String msg) => developer.log('\x1B[31m$msg\x1B[0m', name: '...');
  void wtf(String msg) => developer.log('\x1B[35m$msg\x1B[0m', name: '...');
}

class LogWithType {
  void i(Type type, String msg) =>
      developer.log('\x1B[37m${type.toString()}: $msg\x1B[0m', name: '...');
  void s(Type type, String msg) =>
      developer.log('\x1B[32m${type.toString()}: $msg\x1B[0m', name: '...');
  void w(Type type, String msg) =>
      developer.log('\x1B[33m${type.toString()}: $msg\x1B[0m', name: '...');
  void e(Type type, String msg) =>
      developer.log('\x1B[31m${type.toString()}: $msg\x1B[0m', name: '...');
  void wtf(Type type, String msg) =>
      developer.log('\x1B[35m${type.toString()}: $msg\x1B[0m', name: '...');
}

// info - blue
// success - green
// waring - yellow
// error - red
// wtf - magenta

// Reset:   \x1B[0m
// Black:   \x1B[30m
// White:   \x1B[37m
// Red:     \x1B[31m
// Green:   \x1B[32m
// Yellow:  \x1B[33m
// Blue:    \x1B[34m
// Magenta: \x1B[35m
// Cyan:    \x1B[36m
