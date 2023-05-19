part of '../_index.dart';

class CalculatorResultScreen extends StatelessWidget {
  const CalculatorResultScreen({
    super.key,
  });

  CalculatorCtrl get ct => Ctrl.calculator;
  CalculatorData get dt => Data.calculator.st;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: OnReactive(
        () => SizedBox(
          width: double.infinity,
          child: Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: OnReactive(
                () => Text(
                  dt.rxValScreen.st,
                  textScaleFactor: 3,
                ),
              ),
            ),
          ),
          // color: Colors.amber,
        ),
      ),
    );
  }
}
