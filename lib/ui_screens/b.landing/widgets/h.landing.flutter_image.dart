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
      right: -100,
      bottom: -50,
      child: Visibility(
        visible: MediaQuery.of(context).size.width <= 1000 ? false : true,
        child: Opacity(
          opacity: 0.3,
          child: SizedBox(
            width: sizeWidth >= 1300 ? 500 : 400,
            height: sizeWidth >= 1300 ? 500 : 400,
            child: Image.asset(dt.flutterLogoDark),
          ),
        ),
      ),
    );
  }
}
