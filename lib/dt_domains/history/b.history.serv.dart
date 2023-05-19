part of '_index.dart';

class HistoryServ {
  HistoryProv get pv => Prov.history.st;
  init() => logxx.i(HistoryServ, 'HistoryServ init ...');

  // addToHistories(double valX, String valOps, double valY, String valResult) {
  // pv.rxHistory.setState((s) => History.mock());
  // pv.rxHistoryList.setState(
  //   (s) => Histories(
  //     values: [...pv.rxHistoryList.st.values, pv.rxHistory.st],
  //   ),
  // );
  // }

  addToHistories() {
    pv.rxHistories.setState(
      (s) => Histories(values: [
        // History(
        //   valX: 3.5,
        //   valOps: '+',
        //   valY: 2.5,
        //   valResult: '6',
        // ),
        History(
          valX: pv.rxValX.st,
          valOps: pv.rxValOps.st,
          valY: pv.rxValY.st,
          valResult: pv.rxValResult.st,
        ),
        ...s.values,
      ]),
    );
  }

  clearHistories() {
    pv.rxHistories.setState((s) => Histories(values: []));
  }
}
