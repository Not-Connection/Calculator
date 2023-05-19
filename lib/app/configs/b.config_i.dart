part of '_index.dart';

abstract class IConfig {
  IPersistStore get store;
  String get appName;
  String get apiHost;
  String get authToken;
  String get fcmServerKey;
}
