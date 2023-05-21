part of '_index.dart';

class SplashCtrl {
  SplashData get dt => Data.splash.st;

  init() {
    logxx.i(SplashCtrl, '...');
    delayedNavigation();
  }

  delayedNavigation() async {
    await Future.delayed(2.seconds);
    nav.toReplacement(Routes.landing);
  }
}
