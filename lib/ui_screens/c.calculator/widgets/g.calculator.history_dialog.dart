part of '../_index.dart';

class CalculatorHistoryDialog extends StatelessWidget {
  const CalculatorHistoryDialog({
    super.key,
  });

  CalculatorCtrl get ct => Ctrl.calculator;
  CalculatorData get dt => Data.calculator.st;

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: const Text('Confirmation'),
      content: const Text('Are you sure to delete these histories?'),
      actions: [
        TextButton(
          onPressed: () => nav.back(),
          child: const Text(
            'Cancel',
            style: TextStyle(color: Colors.white38),
          ),
        ),
        TextButton(
          onPressed: () {
            ct.clearHistories();
            nav.back();
          },
          child: const Text(
            'Delete',
            style: TextStyle(color: Colors.deepOrangeAccent),
          ),
        )
      ],
    );
  }
}
