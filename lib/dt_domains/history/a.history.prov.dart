part of '_index.dart';

class HistoryProv {
  final rxValX = RM.inject<double>(() => 0.0);

  final rxValOps = RM.inject<String>(() => '');

  final rxValY = RM.inject<double>(() => 0.0);

  final rxValScreen = RM.inject<String>(() => '0');

  final rxValResult = RM.inject<String>(() => '0');

  final rxIsInit = RM.inject<bool>(() => true);

  final rxSelectedId = RM.inject<int>(
    () => 0,
    sideEffects: SideEffects(
      onSetState: (snap) {
        if (snap.hasData) {
          Serv.history.setValueByHistory();
        }
      },
    ),
  );

  final rxValue = RM.inject<Value>(() => Value());

  final rxHistories = RM.inject<Histories>(
    () => Histories(),
    persist: () => PersistState(
      key: 'rxCobas',
      throttleDelay: 400,
      shouldRecreateTheState: false,
      toJson: (s) => s.toJson(),
      fromJson: (j) => Histories.fromJson(j),
    ),
  );
}
