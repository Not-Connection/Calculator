part of '../_index.dart';

class CalculatorHistory extends StatelessWidget {
  const CalculatorHistory({
    super.key,
  });

  CalculatorCtrl get ct => Ctrl.calculator;
  CalculatorData get dt => Data.calculator.st;

  @override
  Widget build(BuildContext context) {
    final sizeWidth = MediaQuery.of(context).size.width;

    return OnReactive(
      () => Container(
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.black,
          border: Border.all(color: Colors.deepOrangeAccent),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),
        child: Column(
          children: [
            Container(
              height: 56,
              width: double.infinity,
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  sizeWidth < 750
                      ? IconButton(
                          onPressed: () => Scaffold.of(context).closeEndDrawer(),
                          icon: const Icon(Icons.arrow_back_ios),
                        )
                      : const SizedBox.shrink(),
                  const Expanded(
                    child: SizedBox(
                      child: Center(
                        child: Text('History', textScaleFactor: 1.5),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: IconButton(
                      onPressed: dt.rxHistories.st.values.isEmpty
                          ? null
                          : () => showCupertinoDialog(
                                context: context,
                                builder: (context) => const CalculatorHistoryDialog(),
                              ),
                      icon: const Icon(Icons.delete),
                      color: Colors.deepOrangeAccent,
                    ),
                  )
                ],
              ),
            ),
            const Divider(color: Colors.white30),
            const CalculatorHistoryCards(),
          ],
        ),
      ),
    );
  }
}
