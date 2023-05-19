part of '_index.dart';

class ThColor {
  ThColor._();

  static CustomColors get light {
    return CustomColors(
      brand: Colors.pink,
      primary: Colors.blue,
      secondary: Colors.orange,
      statusBar: Colors.black.withOpacity(0.2),
      appBarBackground: Colors.grey.shade50,
      appBarForeground: Colors.grey.shade900,
      barrier: Colors.black.withOpacity(0.3),
    );
  }

  static CustomColors get dark {
    return CustomColors(
      brand: Colors.pink,
      primary: Colors.blue,
      secondary: Colors.orange,
      statusBar: Colors.black.withOpacity(0.4),
      appBarBackground: Colors.grey.shade900,
      appBarForeground: Colors.white,
      barrier: Colors.black.withOpacity(0.7),
    );
  }
}

class CustomColors {
  final MaterialColor brand;
  final Color primary;
  final Color secondary;
  final Color statusBar;
  final Color appBarBackground;
  final Color appBarForeground;
  final Color barrier;
  CustomColors({
    required this.brand,
    required this.primary,
    required this.secondary,
    required this.statusBar,
    required this.appBarBackground,
    required this.appBarForeground,
    required this.barrier,
  });
}
