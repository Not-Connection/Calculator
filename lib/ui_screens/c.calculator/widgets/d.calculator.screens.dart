part of '../_index.dart';

class CalculatorScreens extends StatelessWidget {
  const CalculatorScreens({
    super.key,
  });

  CalculatorCtrl get ct => Ctrl.calculator;
  CalculatorData get dt => Data.calculator.st;

  @override
  Widget build(BuildContext context) {
    final sizeWidth = MediaQuery.of(context).size.width;
    return Expanded(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            sizeWidth < 750 ? const CalculatorHistoryButton() : const SizedBoxH(50),
            const CalculatorBufferScreen(),
            const Divider(color: Colors.white30),
            const CalculatorResultScreen(),
          ],
        ),
      ),
    );
  }
}
