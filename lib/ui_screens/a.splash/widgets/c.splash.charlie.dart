part of '../_index.dart';

class SplashCharlie extends StatelessWidget {
  const SplashCharlie({Key? key}) : super(key: key);

  SplashCtrl get ct => Ctrl.splash;
  SplashData get dt => Data.splash.st;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(Random().nextInt(100).toString()),
      ],
    );
  }
}
