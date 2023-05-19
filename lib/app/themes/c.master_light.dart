part of '_index.dart';

final kThemeMasterLight = ThemeData(
  platform: TargetPlatform.iOS,
  // ----- ----- ----- ----- ----- ----- ----- ----- ----- -----
  // brightness: Brightness.light,
  // primarySwatch: ThColor.light.brand,
  //* colorScheme will replace primarySwatch
  //* colorScheme have default primary & sencodary color
  colorScheme: const ColorScheme.light(),
  // colorScheme: const ColorScheme.light().copyWith(
  //   primary: ThColor.light.primary,
  //   secondary: ThColor.light.secondary,
  // ),
  // ----- ----- ----- ----- ----- ----- ----- ----- ----- -----
  cupertinoOverrideTheme: const CupertinoThemeData().copyWith(
    brightness: Brightness.light,
  ),
  appBarTheme: const AppBarTheme().copyWith(
    color: ThColor.light.appBarBackground,
    foregroundColor: ThColor.light.appBarForeground,
    systemOverlayStyle: SystemUiOverlayStyle.light.copyWith(
      statusBarBrightness: Brightness.dark, //for iPhone
      statusBarColor: ThColor.light.statusBar,
      statusBarIconBrightness: Brightness.dark,
    ),
  ),
  // ----- ----- ----- ----- ----- ----- ----- ----- ----- -----
  inputDecorationTheme: const InputDecorationTheme().copyWith(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  ),
);
