part of '_index.dart';

class HistoryProv {
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

  // final rxHistory = RM.inject<History>(
  //   () => History(),
  //   persist: () => PersistState(
  //     key: 'rxHistory',
  //     throttleDelay: 400,
  //     shouldRecreateTheState: false,
  //     toJson: (s) => s.toJson(),
  //     fromJson: (j) => History.fromJson(j),
  //   ),
  // );

  // final rxHistoryList = RM.inject<Histories>(
  //   () => Histories(),
  //   persist: () => PersistState(
  //     key: 'rxHistoryList',
  //     throttleDelay: 400,
  //     shouldRecreateTheState: false,
  //     toJson: (s) => s.toJson(),
  //     fromJson: (j) => Histories.fromJson(j),
  //   ),
  // );

  final rxValX = RM.inject<double>(() => 0.0);

  final rxValOps = RM.inject<String>(() => '');

  final rxValY = RM.inject<double>(() => 0.0);

  final rxValScreen = RM.inject<String>(() => '0');

  final rxValResult = RM.inject<String>(() => '0');

  var rxIsInit = RM.inject<bool>(() => true);
}
