part of '_index.dart';

class HistoryServ {
  HistoryProv get pv => Prov.history.st;
  init() => logxx.i(HistoryServ, 'HistoryServ init ...');

  //* --- add calculation result to history ---

  addToHistories() {
    pv.rxHistories.setState(
      (s) => Histories(
        values: [
          ...s.values,
        ]..insert(
            0,
            History(
              id: Random().nextInt(9999),
              valX: (pv.rxValX.st).toString(),
              valOps: pv.rxValOps.st,
              valY: (pv.rxValY.st).toString(),
              valResult: pv.rxValResult.st,
            ),
          ),
      ),
    );
  }

  //* --- clear histories ---

  clearHistories() {
    pv.rxHistories.setState((s) => Histories(values: []));
  }

  //* --- select listtile history ---

  setSelectedId(int id) {
    pv.rxSelectedId.st = id;
  }

  //*--- set value number by history tapped ---

  setValueByHistory() {
    final value = getValueByHistory();
    pv.rxValX.setState((s) {
      if (double.parse(value.valX) == (double.parse(value.valX)).floor()) {
        return ((double.parse(value.valX)).floor());
      } else {
        return double.parse(value.valX);
      }
    });
    pv.rxValY.setState((s) {
      if (double.parse(value.valY) == (double.parse(value.valY)).floor()) {
        return ((double.parse(value.valY)).floor());
      } else {
        return double.parse(value.valY);
      }
    });
    pv.rxValOps.setState((s) => value.valOps);
    pv.rxValScreen.setState((s) => value.valResult);
  }

  History getValueByHistory() {
    final index = pv.rxHistories.st.values.indexWhere((element) => element.id == pv.rxSelectedId.st);
    return pv.rxHistories.st.values[index];
  }
}
