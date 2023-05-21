part of '../_index.dart';

class LandingPolaroidAnnisa extends StatelessWidget {
  const LandingPolaroidAnnisa({
    super.key,
  });

  LandingCtrl get ct => Ctrl.landing;
  LandingData get dt => Data.landing.st;

  @override
  Widget build(BuildContext context) {
    return Polaroid(
      images: DecorationImage(image: AssetImage(dt.annisaImage)),
      nama: dt.name1,
      npm: dt.npm1,
    );
  }
}
