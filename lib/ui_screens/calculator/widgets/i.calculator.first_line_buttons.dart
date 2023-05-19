part of '../_index.dart';

class CalculatorFirstLineButtons extends StatelessWidget {
  const CalculatorFirstLineButtons({Key? key}) : super(key: key);

  CalculatorCtrl get ct => Ctrl.calculator;
  CalculatorData get dt => Data.calculator.st;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextButtonChar(
          char: 'C',
          color: Colors.deepOrangeAccent,
          onPressed: () => ct.clear(),
        ),
        TextButtonIcon(
          icon: Icons.backspace_outlined,
          onPressed: () => ct.delete(),
        ),
        TextButtonChar(
          char: '^',
          color: Colors.deepOrangeAccent,
          onPressed: () {
            ct.tapOps('^');
          },
        ),
        // TextButtonIcon(icon: Icons.percent, onPressed: () {}),
        TextButtonChar(
          char: '/',
          color: Colors.deepOrangeAccent,
          onPressed: () => ct.tapOps('/'),
        ),
      ],
    );
  }
}
