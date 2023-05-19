part of '_index.dart';

abstract class L10n {
  String get helloWorld;
  String welcome(Object name);
  String gender(Object gender);
  String plural(num howMany);
  String formattedNumber(int value);
  String date(DateTime date);
}
