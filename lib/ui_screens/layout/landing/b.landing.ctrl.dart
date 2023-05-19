part of '_index.dart';

class LandingCtrl {
  LandingData get dt => Data.landing.st;

  init() => logxx.i(LandingCtrl, '...');

  action() => dt.rxInt.setState((s) => s + 1);
}
