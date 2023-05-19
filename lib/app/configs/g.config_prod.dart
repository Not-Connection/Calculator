// ignore_for_file: annotate_overrides
// ignore_for_file: lines_longer_than_80_chars

part of '_index.dart';

class ConfigProd implements IConfig {
  IPersistStore get store => StoreSharedPreferences();
  String get appName => 'FeMaster';
  String get apiHost => 'example.com';
  String get authToken => '3fadf85785ef22fc9fda7a03578770d6da459f72b8b5bf7137da7d073bc1e11f';
  String get fcmServerKey =>
      'AAAAwnFoI0E:APA91bEPWToAwk6NMO40Qn_TYqUICe96vO4-Q3hVAzsDsYS495OSTfTtq7Vqd2pYOb61kNqc2F2EsoFJP7elh_KxIPh0gYU8kOzr-j7aLkkgQY-mGQ5NxMTFMwgYrky5WtLiEwOB-MX6';
}
