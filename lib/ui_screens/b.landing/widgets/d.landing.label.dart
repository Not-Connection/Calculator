part of '../_index.dart';

class LandingLabel extends StatelessWidget {
  const LandingLabel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final sizeWidth = MediaQuery.of(context).size.width;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Calculator', textScaleFactor: 5, style: GoogleFonts.caveat()),
          Visibility(
            visible: sizeWidth > 350,
            child: Text(
              'Developed by:',
              style: GoogleFonts.cormorantGaramond(),
              textScaleFactor: 1.5,
            ),
          ),
          const SizedBoxH(10),
          Visibility(
            visible: sizeWidth > 350,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                LandingPolaroidIndah(),
                LandingPolaroidAnnisa(),
              ],
            ),
          ),
          const SizedBoxH(5),
          OutlinedButton(
            onPressed: () {
              nav.to(Routes.calculator);
            },
            child: const Text('Go to Calculator'),
          ),
          const SizedBoxH(8),
          const LandingSupportedText()
        ],
      ),
    );
  }
}
