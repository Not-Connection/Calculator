part of '../_index.dart';

class LandingBackDropImage extends StatelessWidget {
  const LandingBackDropImage({
    super.key,
  });

  LandingCtrl get ct => Ctrl.landing;
  LandingData get dt => Data.landing.st;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            child: Center(
              child: Opacity(
                opacity: 0.2,
                child: Image.asset(
                  dt.mathImage,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
