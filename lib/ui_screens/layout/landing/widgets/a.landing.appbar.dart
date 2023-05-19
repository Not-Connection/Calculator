part of '../_index.dart';

class LandingAppbar extends StatelessWidget {
  const LandingAppbar({Key? key}) : super(key: key);

  LandingCtrl get ct => Ctrl.landing;
  LandingData get dt => Data.landing.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.rxTitle.st)),
    );
  }
}
