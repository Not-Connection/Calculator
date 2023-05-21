part of '../_index.dart';

class CalculatorHistoryCards extends StatelessWidget {
  const CalculatorHistoryCards({
    super.key,
  });

  CalculatorCtrl get ct => Ctrl.calculator;
  CalculatorData get dt => Data.calculator.st;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: OnBuilder.data(
        listenTo: dt.rxHistories,
        builder: (data) => Container(
          child: data.values.isEmpty
              ? const Center(
                  child: Text('History is empty'),
                )
              : ListView(
                  children: List.generate(
                  data.values.length,
                  (index) {
                    final value = data.values[index];
                    index = index + 1;
                    return CalculatorHistoryCard(
                      value: value,
                      index: index,
                    );
                  },
                )),
        ),
      ),
    );
  }
}
