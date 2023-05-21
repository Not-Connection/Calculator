part of '../_index.dart';

class SplashAppbar extends StatelessWidget {
  const SplashAppbar({Key? key}) : super(key: key);

  SplashCtrl get ct => Ctrl.splash;
  SplashData get dt => Data.splash.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.rxTitle.st)),
    );
  }
}
