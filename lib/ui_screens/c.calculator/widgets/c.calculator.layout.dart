part of '../_index.dart';

class CalculatorLayout extends StatelessWidget {
  const CalculatorLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.black,
            border: Border.all(color: Colors.deepOrangeAccent),
            borderRadius: const BorderRadius.all(Radius.circular(20))),
        constraints: const BoxConstraints(maxWidth: 400),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CalculatorScreens(),
            Divider(color: Colors.white30),
            SizedBoxH(5),
            CalculatorFirstLineButtons(),
            SizedBoxH(5),
            CalculatorSecondLineButtons(),
            SizedBoxH(5),
            CalculatorThirdLineButtons(),
            SizedBoxH(5),
            CalculatorFourthLineButtons(),
            SizedBoxH(5),
            CalculatorFifthLineButtons(),
            SizedBoxH(5),
          ],
        ),
      ),
    );
  }
}
