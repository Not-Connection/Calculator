part of '../_index.dart';

class CalculatorThirdLineButtons extends StatelessWidget {
  const CalculatorThirdLineButtons({Key? key}) : super(key: key);

  CalculatorCtrl get ct => Ctrl.calculator;
  CalculatorData get dt => Data.calculator.st;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextButtonChar(
          char: '4',
          onPressed: () => ct.tapChar('4'),
        ),
        TextButtonChar(
          char: '5',
          onPressed: () => ct.tapChar('5'),
        ),
        TextButtonChar(
          char: '6',
          onPressed: () => ct.tapChar('6'),
        ),
        TextButtonIcon(
          icon: Icons.remove,
          onPressed: () => ct.tapOps('-'),
        )
      ],
    );
  }
}
