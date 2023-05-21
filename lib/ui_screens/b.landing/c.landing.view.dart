part of '_index.dart';

class LandingView extends StatelessWidget {
  const LandingView({Key? key}) : super(key: key);

  LandingCtrl get ct => Ctrl.landing;
  LandingData get dt => Data.landing.st;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        fit: StackFit.expand,
        children: [
          LandingBackDropImage(),
          LandingGradient(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LandingContent(),
            ],
          ),
          LandingFlutterImage(),
        ],
      ),
    );
  }
}
