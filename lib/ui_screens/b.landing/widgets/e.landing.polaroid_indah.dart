part of '../_index.dart';

class LandingPolaroidIndah extends StatelessWidget {
  const LandingPolaroidIndah({
    super.key,
  });

  LandingCtrl get ct => Ctrl.landing;
  LandingData get dt => Data.landing.st;

  @override
  Widget build(BuildContext context) {
    return Polaroid(
      images: DecorationImage(image: AssetImage(dt.indahImage)),
      nama: dt.name2,
      npm: dt.npm2,
    );
  }
}
