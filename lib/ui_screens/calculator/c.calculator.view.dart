part of '_index.dart';

class CalculatorView extends StatelessWidget {
  const CalculatorView({Key? key}) : super(key: key);

  CalculatorCtrl get ct => Ctrl.calculator;
  CalculatorData get dt => Data.calculator.st;

  @override
  Widget build(BuildContext context) {
    final sizeWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      // backgroundColor: Colors.black,

      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: CalculatorAppbar(),
      ),
      endDrawerEnableOpenDragGesture: false,
      endDrawer: OnReactive(
        () => Drawer(
          backgroundColor: Colors.grey.shade900,
          child: dt.isHistory.st == true ? const CalculatorHistory() : const CalculatorDescript(),
        ),
      ),
      body: sizeWidth < 750
          ? const CalculatorLayout()
          : sizeWidth < 1000
              ? Row(
                  children: [
                    const CalculatorLayout(),
                    const SizedBoxW(5),
                    Expanded(
                      child: Container(
                        width: 100,
                        color: Colors.black,
                        child: const CalculatorHistory(),
                      ),
                    ),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // SizedBoxW(20),
                    Expanded(
                      child: Container(
                        width: 100,
                        color: Colors.black,
                        child: const CalculatorDescript(),
                      ),
                    ),
                    const SizedBoxW(5),
                    const CalculatorLayout(),
                    const SizedBoxW(5),
                    Expanded(
                      child: Container(
                        width: 100,
                        color: Colors.black,
                        child: const CalculatorHistory(),
                      ),
                    ),
                  ],
                ),
    );
  }
}
