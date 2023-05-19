part of '_index.dart';

final kThemeMasterDark = ThemeData(
  platform: TargetPlatform.iOS,
  // ----- ----- ----- ----- ----- ----- ----- ----- ----- -----
  //* Brightness.dark have default secondary/accent color
  // brightness: Brightness.dark,
  // primarySwatch: ThColor.dark.brand,
  //* colorScheme will replace primarySwatch
  //* colorScheme have default primary & sencodary color
  colorScheme: const ColorScheme.dark(),
  // colorScheme: const ColorScheme.dark().copyWith(
  //   primary: ThColor.dark.primary,
  //   secondary: ThColor.dark.secondary,
  // ),
  // ----- ----- ----- ----- ----- ----- ----- ----- ----- -----
  cupertinoOverrideTheme: const CupertinoThemeData().copyWith(
    brightness: Brightness.dark,
  ),
  appBarTheme: const AppBarTheme().copyWith(
    color: ThColor.dark.appBarBackground,
    foregroundColor: ThColor.dark.appBarForeground,
    systemOverlayStyle: SystemUiOverlayStyle.light.copyWith(
      statusBarBrightness: Brightness.dark, //for iPhone
      statusBarColor: ThColor.dark.statusBar,
      statusBarIconBrightness: Brightness.light,
    ),
  ),
  // ----- ----- ----- ----- ----- ----- ----- ----- ----- -----
  inputDecorationTheme: const InputDecorationTheme().copyWith(
    isDense: true,
    alignLabelWithHint: true,
    floatingLabelBehavior: FloatingLabelBehavior.auto,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide().copyWith(width: 1),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      shape: const StadiumBorder(),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(
        side: const BorderSide(
          color: Colors.blue,
          width: 1,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      // shape: const StadiumBorder(),
      // shape: BeveledRectangleBorder(
      //   borderRadius: BorderRadius.circular(10.0),
      // ),
    ),
  ),
);
