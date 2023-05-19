part of '_index.dart';

class RouteMap {
  RouteMap._();

  static final data = {
    // Routes.root: (RouteData data) => const HomeView(),
    //* master -- ----- ----- ----- ----- -----
    Routes.calculator: (RouteData data) => const CalculatorView(),
    Routes.splash: (RouteData data) => const SplashView(),
    Routes.landing: (RouteData data) => const LandingView(),
  };
}
