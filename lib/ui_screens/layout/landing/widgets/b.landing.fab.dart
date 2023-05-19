part of '../_index.dart';

class LandingFab extends StatelessWidget {
  const LandingFab({Key? key}) : super(key: key);

  LandingCtrl get ct => Ctrl.landing;
  LandingData get dt => Data.landing.st;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => ct.action(),
    );
  }
}
