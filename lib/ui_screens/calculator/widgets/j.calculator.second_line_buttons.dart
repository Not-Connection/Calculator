part of '../_index.dart';

class CalculatorSecondLineButtons extends StatelessWidget {
  const CalculatorSecondLineButtons({Key? key}) : super(key: key);

  CalculatorCtrl get ct => Ctrl.calculator;
  CalculatorData get dt => Data.calculator.st;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextButtonChar(
          char: '7',
          onPressed: () => ct.tapChar('7'),
        ),
        TextButtonChar(
          char: '8',
          onPressed: () => ct.tapChar('8'),
        ),
        TextButtonChar(
          char: '9',
          onPressed: () => ct.tapChar('9'),
        ),
        TextButtonIcon(
          icon: Icons.close,
          onPressed: () => ct.tapOps('x'),
        )
      ],
    );
  }
}
