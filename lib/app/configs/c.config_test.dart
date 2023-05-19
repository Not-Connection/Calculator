// ignore_for_file: annotate_overrides

part of '_index.dart';

class ConfigTest implements IConfig {
  IPersistStore get store => StoreFake();
  String get apiHost => 'test.com';
  String get appName => 'TEST_Calculator';
  String get authToken => 'zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz';
  String get fcmServerKey =>
      'AAAAwnFoI0E:APA91bEPWToAwk6NMO40Qn_TYqUICe96vO4-Q3hVAzsDsYS495OSTfTtq7Vqd2pYOb61kNqc2F2EsoFJP7elh_KxIPh0gYU8kOzr-j7aLkkgQY-mGQ5NxMTFMwgYrky5WtLiEwOB-MX6';
}
