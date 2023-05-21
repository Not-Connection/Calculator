part of '../_index.dart';

class CalculatorFourthLineButtons extends StatelessWidget {
  const CalculatorFourthLineButtons({super.key});

  CalculatorCtrl get ct => Ctrl.calculator;
  CalculatorData get dt => Data.calculator.st;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextButtonChar(
          char: '1',
          onPressed: () => ct.tapChar('1'),
        ),
        TextButtonChar(
          char: '2',
          onPressed: () => ct.tapChar('2'),
        ),
        TextButtonChar(
          char: '3',
          onPressed: () => ct.tapChar('3'),
        ),
        TextButtonIcon(
          icon: Icons.add,
          onPressed: () => ct.tapOps('+'),
        )
      ],
    );
  }
}
