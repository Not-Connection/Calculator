part of '../_index.dart';

class CalculatorFifthLineButtons extends StatelessWidget {
  const CalculatorFifthLineButtons({super.key});

  CalculatorCtrl get ct => Ctrl.calculator;
  CalculatorData get dt => Data.calculator.st;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextButtonChar(
          char: 'log',
          color: Colors.deepOrangeAccent,
          onPressed: () => ct.tapOps('log'),
        ),
        TextButtonChar(
          char: '0',
          onPressed: () => ct.tapChar('0'),
        ),
        TextButtonChar(
          char: '.',
          onPressed: () => ct.tapChar('.'),
        ),
        FloatingActionButton(
          backgroundColor: Colors.orange.shade800,
          onPressed: () => ct.equals(),
          child: const Text(
            '=',
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
      ],
    );
  }
}
