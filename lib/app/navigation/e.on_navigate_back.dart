part of '_index.dart';

class OnNavigateBack {
  OnNavigateBack._();

  static action(RouteData? data) {
    if (data == null) {
      Dialogs.confirmExit();
      return false;
    }
    return null;
  }
}
