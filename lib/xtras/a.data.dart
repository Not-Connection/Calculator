part of '_index.dart';

abstract class Data {
  static Injected<CalculatorData> get calculator => _calculatorData;
  static Injected<LandingData> get landing => _landingData;
  static Injected<SplashData> get splash => _splashData;
}

final _splashData = RM1.inj(SplashData(), Ctrl.splash.init);
final _calculatorData = RM1.inj(CalculatorData(), Ctrl.calculator.init);
final _landingData = RM1.inj(LandingData(), Ctrl.landing.init);
