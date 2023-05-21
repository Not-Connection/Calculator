part of '../_index.dart';

class CalculatorHistoryCard extends StatelessWidget {
  final History value;
  final int index;
  const CalculatorHistoryCard({
    super.key,
    required this.value,
    required this.index,
  });

  CalculatorCtrl get ct => Ctrl.calculator;
  CalculatorData get dt => Data.calculator.st;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: OnReactive(
        () => ListTile(
          title: Wrap(
            spacing: 2,
            children: [
              OnReactive(
                () => Text(
                  value.valX,
                  style: value.valOps == 'log'
                      ? const TextStyle(
                          fontSize: 10,
                          fontFeatures: [FontFeature.superscripts()],
                        )
                      : null,
                ),
              ),
              OnReactive(
                () => Text(value.valOps == '^' ? '' : value.valOps),
              ),
              OnReactive(
                () => Text(
                  value.valY,
                  style: value.valOps == '^'
                      ? const TextStyle(
                          fontSize: 10,
                          fontFeatures: [FontFeature.superscripts()],
                        )
                      : null,
                ),
              ),
            ],
          ),
          subtitle: Text(' = ${value.valResult}'),
          selected: dt.rxSelectedId.st == value.id,
          leading: SizedBox(
            width: 25,
            height: 50,
            child: Center(
              child: Text('$index'),
            ),
          ),
          onTap: () => ct.select(value.id, context),
        ),
      ),
    );
  }
}
