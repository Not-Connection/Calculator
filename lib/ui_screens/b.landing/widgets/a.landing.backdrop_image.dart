part of '../_index.dart';

class LandingBackDropImage extends StatelessWidget {
  const LandingBackDropImage({
    super.key,
  });

  LandingCtrl get ct => Ctrl.landing;
  LandingData get dt => Data.landing.st;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
      child: Opacity(
        opacity: 0.3,
        child: Image.asset(
          dt.mathImage,
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,

          // height: double.infinity,
          // repeat: ImageRepeat.repeatY,
        ),
      ),
    );
  }
}
