part of '_index.dart';

class HistoryServ {
  HistoryProv get pv => Prov.history.st;
  init() => logxx.i(HistoryServ, 'HistoryServ init ...');

  addToHistories() {
    pv.rxHistories.setState(
      (s) => Histories(values: [
        History(
          id: Random().nextInt(9999),
          valX: pv.rxValX.st,
          valOps: pv.rxValOps.st,
          valY: pv.rxValY.st,
          valResult: pv.rxValResult.st,
        ),
        ...s.values,
      ]),
    );
  }

  History getValueByHistory() {
    final index = pv.rxHistories.st.values.indexWhere((element) => element.id == pv.rxSelectedId.st);
    return pv.rxHistories.st.values[index];
  }

  setValueByHistory() {
    final value = getValueByHistory();
    pv.rxValX.setState((s) => value.valX);
    pv.rxValY.setState((s) => value.valY);
    pv.rxValOps.setState((s) => value.valOps);
    pv.rxValScreen.setState((s) => value.valResult);
  }

  clearHistories() {
    pv.rxHistories.setState((s) => Histories(values: []));
  }

  setSelectedId(int id) {
    pv.rxSelectedId.st = 0;
    pv.rxSelectedId.st = id;
  }

  select(int id) {
    setSelectedId(id);
  }
}
