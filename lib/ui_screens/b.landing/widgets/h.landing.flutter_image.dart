part of '../_index.dart';

class LandingFlutterImage extends StatelessWidget {
  const LandingFlutterImage({
    super.key,
  });

  LandingCtrl get ct => Ctrl.landing;
  LandingData get dt => Data.landing.st;

  @override
  Widget build(BuildContext context) {
    final sizeWidth = MediaQuery.of(context).size.width;
    return Positioned(
      right: -150,
      bottom: -100,
      child: Visibility(
        visible: MediaQuery.of(context).size.width <= 1000 ? false : true,
        child: SizedBox(
          width: sizeWidth >= 1300 ? 500 : 400,
          height: sizeWidth >= 1300 ? 500 : 400,
          child: Image.asset(dt.flutterLogoDark),
        ),
      ),
    );
  }
}
