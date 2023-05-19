part of '_index.dart';

class CalculatorData {
  final rxTitle = 'Calculator'.inj();

  final rxInt = 0.inj();

  final isHistory = true.inj();

  final rxValX = Prov.history.st.rxValX;

  final rxValOps = Prov.history.st.rxValOps;

  final rxValY = Prov.history.st.rxValY;

  final rxValScreen = Prov.history.st.rxValScreen;

  final rxValResult = Prov.history.st.rxValResult;

  final rxIsInit = Prov.history.st.rxIsInit;

  final rxHistories = Prov.history.st.rxHistories;
}
