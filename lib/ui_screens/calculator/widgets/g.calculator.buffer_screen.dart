part of '../_index.dart';

class CalculatorBufferScreen extends StatelessWidget {
  const CalculatorBufferScreen({
    super.key,
  });

  CalculatorCtrl get ct => Ctrl.calculator;
  CalculatorData get dt => Data.calculator.st;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: double.infinity,
        child: OnReactive(
          () => Row(
            children: [
              TextBoxFlexible(text: '${dt.rxValX.st}'),
              TextBoxFlexible(text: dt.rxValOps.st),
              TextBoxFlexible(text: '${dt.rxValY.st}'),
            ],
          ),
        ),
      ),
    );
  }
}
