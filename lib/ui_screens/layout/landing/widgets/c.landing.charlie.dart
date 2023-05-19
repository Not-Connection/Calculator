part of '../_index.dart';

class LandingCharlie extends StatelessWidget {
  const LandingCharlie({Key? key}) : super(key: key);

  LandingCtrl get ct => Ctrl.landing;
  LandingData get dt => Data.landing.st;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(Random().nextInt(100).toString()),
        OnReactive(() => Text('${dt.rxInt.st}')),
      ],
    );
  }
}
