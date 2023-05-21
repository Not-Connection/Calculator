part of '_index.dart';

class CalculatorCtrl {
  CalculatorData get dt => Data.calculator.st;

  init() => logxx.i(CalculatorCtrl, '...');

  //* --- ontap function listile history ---

  select(int id, BuildContext context) {
    Serv.history.setSelectedId(id);
    if (MediaQuery.of(context).size.width < 750) {
      Scaffold.of(context).closeEndDrawer();
    }
  }

  //* --- clear number value ---

  clear() {
    dt.rxValX.st = 0.0;
    dt.rxValOps.st = '';
    dt.rxValY.st = 0.0;
    dt.rxValScreen.st = '0';
    dt.rxIsInit.st = true;
  }

  //* --- tap char buttons ---

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

  //* --- delete number value ---

  delete() {
    var a = dt.rxValScreen.st.length;
    dt.rxValScreen.setState((s) => s.substring(0, a - 1));
    if (a == 1) {
      dt.rxValScreen.st = '0';
      dt.rxIsInit.st = true;
    }
  }

  //* --- tap operator buttons ---

  tapOps(String ops) {
    if (ops == '-') {
      if (dt.rxIsInit.st) {
        dt.rxValScreen.st = ops;
        dt.rxIsInit.st = false;
      }
    }
    if (double.parse(dt.rxValScreen.st) == double.parse(dt.rxValScreen.st).floor()) {
      dt.rxValX.st = double.parse(dt.rxValScreen.st).floor();
    } else {
      dt.rxValX.st = double.parse(dt.rxValScreen.st);
    }
    dt.rxValOps.st = ops;
    dt.rxIsInit.st = true;
  }

  //* --- tap equal buttons (calculate function) ---

  equals() {
    var eql = dt.rxValOps.st;

    if (double.parse(dt.rxValScreen.st) == double.parse(dt.rxValScreen.st).floor()) {
      dt.rxValY.st = double.parse(dt.rxValScreen.st).floor();
    } else {
      dt.rxValY.st = double.parse(dt.rxValScreen.st);
    }
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
    if (eql == '\u00f7') {
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

  //* --- history ---

  addToHistories() => Serv.history.addToHistories();

  clearHistories() => Serv.history.clearHistories();
}
