part of '_index.dart';

class CalculatorCtrl {
  CalculatorData get dt => Data.calculator.st;

  init() => logxx.i(CalculatorCtrl, '...');

  action() => dt.rxInt.setState((s) => s + 1);

  clear() {
    dt.rxValX.st = 0.0;
    dt.rxValOps.st = '';
    dt.rxValY.st = 0.0;
    dt.rxValScreen.st = '0';
    dt.rxIsInit.st = true;
  }

  tapChar(String char) {
    if (dt.rxIsInit.st) {
      dt.rxIsInit.setState((s) => false);
      if (char == '.') {
        dt.rxValScreen.st = '0.';
      } else if (char == '0') {
        dt.rxValScreen.st = '0';
      } else {
        dt.rxValScreen.st = char;
      }
    } else {
      if (char == '.') {
        var screenX = dt.rxValScreen.st.split('.');
        if (screenX.length == 1) {
          dt.rxValScreen.setState((s) => s + char);
        }
      } else if (char == '0') {
        if (dt.rxValScreen.st != '0') {
          dt.rxValScreen.setState((s) => s + char);
        }
      } else {
        dt.rxValScreen.setState((s) => s + char);
      }
    }
  }

  delete() {
    var a = dt.rxValScreen.st.length;
    dt.rxValScreen.setState((s) => s.substring(0, a - 1));
    if (a == 1) {
      dt.rxValScreen.st = '0';
      dt.rxIsInit.st = true;
    }
  }

  tapOps(String ops) {
    if (ops == '-') {
      if (dt.rxIsInit.st) {
        dt.rxValScreen.st = ops;
        dt.rxIsInit.st = false;
      }
    }
    final valXDouble = double.parse(dt.rxValScreen.st);
    final valXInt = valXDouble.floor();
    if (valXDouble == valXInt) {
      dt.rxValX.st = valXInt.toDouble();
    } else {
      dt.rxValX.st = valXDouble;
    }
    // dt.valX.st = double.parse(dt.valScreen.st);
    dt.rxValOps.st = ops;
    dt.rxIsInit.st = true;
  }

  equals() {
    var eql = dt.rxValOps.st;

    final valYDouble = double.parse(dt.rxValScreen.st);
    final valYInt = valYDouble.floor();
    if (valYDouble == valYInt) {
      dt.rxValY.st = valYInt.toDouble();
    } else {
      dt.rxValY.st = valYDouble;
    }
    // dt.valY.st = double.parse(dt.valScreen.st);
    dt.rxIsInit.st = true;

    if (eql == 'log') {
      dt.rxValScreen.st = (log(dt.rxValY.st) / log(dt.rxValX.st)).toString();
      dt.rxValResult.st = dt.rxValScreen.st;
    }
    if (eql == '^') {
      dt.rxValScreen.st = (pow(dt.rxValX.st, dt.rxValY.st)).toString();
      dt.rxValResult.st = dt.rxValScreen.st;
    }
    if (eql == '+') {
      dt.rxValScreen.st = (dt.rxValX.st + dt.rxValY.st).toString();
      dt.rxValResult.st = dt.rxValScreen.st;
    }
    if (eql == '-') {
      dt.rxValScreen.st = (dt.rxValX.st - dt.rxValY.st).toString();
      dt.rxValResult.st = dt.rxValScreen.st;
    }
    if (eql == 'x') {
      dt.rxValScreen.st = (dt.rxValX.st * dt.rxValY.st).toString();
      dt.rxValResult.st = dt.rxValScreen.st;
    }
    if (eql == '/') {
      dt.rxValScreen.st = (dt.rxValX.st / dt.rxValY.st).toString();
      dt.rxValResult.st = dt.rxValScreen.st;
    }

    var screenDouble = double.parse(dt.rxValScreen.st);
    var screenInt = screenDouble.floor();
    if (screenDouble == screenInt) {
      dt.rxValScreen.st = screenInt.toString();
      dt.rxValResult.st = dt.rxValScreen.st;
    }

    addToHistories();
  }

  addToHistories() => Serv.history.addToHistories();

  clearHistories() => Serv.history.clearHistories();
}
