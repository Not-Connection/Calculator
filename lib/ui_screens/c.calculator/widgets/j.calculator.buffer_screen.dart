part of '../_index.dart';

class CalculatorBufferScreen extends StatelessWidget {
  const CalculatorBufferScreen({
    super.key,
  });

  CalculatorCtrl get ct => Ctrl.calculator;
  CalculatorData get dt => Data.calculator.st;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.transparent,
        width: double.infinity,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Wrap(
            spacing: 4,
            children: [
              OnReactive(
                () => Text(
                  dt.rxValX.st == 0.0 ? '' : '${dt.rxValX.st}',
                  textScaleFactor: dt.rxValOps.st == 'log' ? 1.3 : 2,
                  style: dt.rxValOps.st == 'log'
                      ? const TextStyle(
                          fontFeatures: [FontFeature.superscripts()],
                        )
                      : null,
                ),
              ),
              OnReactive(
                () => dt.rxValOps.st != '^'
                    ? Text(dt.rxValOps.st == '' ? '' : dt.rxValOps.st, textScaleFactor: 2)
                    : const SizedBox.shrink(),
              ),
              OnReactive(
                () => Text(
                  dt.rxValY.st == 0.0 ? '' : '${dt.rxValY.st}',
                  textScaleFactor: dt.rxValOps.st == '^' ? 1.3 : 2,
                  style: dt.rxValOps.st == '^'
                      ? const TextStyle(
                          fontFeatures: [FontFeature.superscripts()],
                        )
                      : null,
                ),
              ),
              const SizedBoxW(5),
              OnReactive(
                () => Text(dt.rxValY.st == 0.0 ? '' : '=', textScaleFactor: 2),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
