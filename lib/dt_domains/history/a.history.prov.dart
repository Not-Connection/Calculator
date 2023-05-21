part of '_index.dart';

class HistoryProv {
  //*--- variable number values ---

  final rxValX = RM.inject<num>(() => 0.0);

  final rxValOps = RM.inject<String>(() => '');

  final rxValY = RM.inject<num>(() => 0.0);

  final rxValScreen = RM.inject<String>(() => '0');

  final rxValResult = RM.inject<String>(() => '0');

  final rxIsInit = RM.inject<bool>(() => true);

  //* --- variable selected id ontapped ---

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

  //* --- variable histories ---

  final rxHistories = RM.inject<Histories>(
    () => Histories(),
    persist: () => PersistState(
      key: 'rxHistories',
      throttleDelay: 400,
      shouldRecreateTheState: false,
      toJson: (s) => s.toJson(),
      fromJson: (j) => Histories.fromJson(j),
    ),
  );
}
