part of '_index.dart';

final kThemeBluishLight = kThemeMasterLight.copyWith(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.blue,
    brightness: Brightness.light,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
        const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      ),
      shape: MaterialStateProperty.all<OutlinedBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      backgroundColor: MaterialStateProperty.all<Color>(
        Colors.blue.shade900,
      ),
    ),
  ),
);
