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
        // TextButtonIcon(
        //   icon: Icons.switch_access_shortcut,
        //   onPressed: () {},
        // ),
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
          onPressed: () {
            ct.equals();
            logx.wtf(dt.rxValResult.st);
            // for (var e in dt.rxHistoryList.st) {
            //   logx.wtf(e);
            // }
          },
          child: const Text(
            '=',
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
      ],
    );
  }
}
