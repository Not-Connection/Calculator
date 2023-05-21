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
        TextButton(
          onPressed: () => ct.tapOps('^'),
          child: OnReactive(
            () => const Wrap(
              children: [
                Text(
                  'x',
                  style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 25),
                ),
                Text(
                  '2',
                  style: TextStyle(
                    color: Colors.deepOrangeAccent,
                    fontFeatures: [FontFeature.superscripts()],
                  ),
                ),
              ],
            ),
          ),
        ),
        TextButtonChar(
          char: '\u00f7',
          color: Colors.deepOrangeAccent,
          onPressed: () => ct.tapOps('\u00f7'),
        ),
      ],
    );
  }
}
