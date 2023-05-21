part of '../_index.dart';

class LandingGradient extends StatelessWidget {
  const LandingGradient({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            // Colors.black,
            Colors.black,
            Colors.transparent,
          ],
        ),
      ),
    );
  }
}
