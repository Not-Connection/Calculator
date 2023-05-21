part of '../_index.dart';

class CalculatorHistoryButton extends StatelessWidget {
  const CalculatorHistoryButton({
    super.key,
  });

  CalculatorCtrl get ct => Ctrl.calculator;
  CalculatorData get dt => Data.calculator.st;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
            onPressed: () {
              dt.isHistory.st = true;
              Scaffold.of(context).openEndDrawer();
            },
            icon: const Icon(
              Icons.history,
              size: 35,
            ),
          ),
        ],
      ),
    );
  }
}
