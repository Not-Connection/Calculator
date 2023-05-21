part of '../_index.dart';

class CalculatorAppbar extends StatelessWidget {
  const CalculatorAppbar({Key? key}) : super(key: key);

  CalculatorCtrl get ct => Ctrl.calculator;
  CalculatorData get dt => Data.calculator.st;

  @override
  Widget build(BuildContext context) {
    final sizeWidth = MediaQuery.of(context).size.width;
    return AppBar(
      // ti
      centerTitle: true,
      backgroundColor: Colors.black,
      title: OnReactive(
        () => Text(
          dt.rxTitle.st,
          style: const TextStyle(wordSpacing: 20),
        ),
      ),
      actions: [
        sizeWidth < 1000
            ? IconButton(
                tooltip: 'Description',
                onPressed: () {
                  dt.isHistory.st = false;
                  Scaffold.of(context).openEndDrawer();
                },
                icon: const Icon(Icons.more_vert),
              )
            : const SizedBox.shrink(),
      ],
    );
  }
}
