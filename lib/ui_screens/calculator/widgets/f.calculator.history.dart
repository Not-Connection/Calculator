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
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
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
                          onPressed: () {
                            Scaffold.of(context).closeEndDrawer();
                          },
                          icon: const Icon(Icons.arrow_back_ios),
                        )
                      : const SizedBox.shrink(),
                  const Expanded(
                    child: SizedBox(
                      child: Center(
                        child: Text(
                          'History',
                          textScaleFactor: 1.5,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: IconButton(
                      onPressed: dt.rxHistories.st.values.isEmpty
                          ? null
                          : () {
                              showCupertinoDialog(
                                context: context,
                                builder: (context) {
                                  return CupertinoAlertDialog(
                                    title: const Text('Confirmation'),
                                    content: const Text('Are you sure to delete these histories?'),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          nav.back();
                                        },
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
                                },
                              );
                            },
                      icon: const Icon(Icons.delete),
                      color: Colors.deepOrangeAccent,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: OnBuilder.data(
                listenTo: dt.rxHistories,
                builder: (data) => Container(
                  // color: Colors.black,
                  child: data.values.isEmpty
                      ? const Center(
                          child: Text('History is empty'),
                        )
                      : ListView(
                          children: [
                            for (var i in data.values)
                              Card(
                                child: ListTile(
                                  title: Text('${i.valX} ${i.valOps} ${i.valY} = ${i.valResult}'),
                                  selected: i.id == dt.rxSelectedId.st,
                                  onTap: () => ct.select(i.id),
                                ),
                              ),
                          ],
                        ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
