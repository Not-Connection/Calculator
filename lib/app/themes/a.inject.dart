part of '_index.dart';

enum ThemeName { normal, master, purplish, greenish, bluish }

final themeRM = RM.injectTheme<ThemeName>(
  // themeMode: ThemeMode.system,
  themeMode: ThemeMode.dark,
  lightThemes: {
    ThemeName.master: kThemeMasterLight,
    ThemeName.greenish: kThemeGreenishLight,
    ThemeName.purplish: kThemePurplishLight,
    ThemeName.bluish: kThemeBluishLight,
    ThemeName.normal: ThemeData.light(),
  },
  darkThemes: {
    ThemeName.master: kThemeMasterDark,
    ThemeName.greenish: kThemeGreenishDark,
    ThemeName.purplish: kThemePurplishDark,
    ThemeName.bluish: kThemeBluishDark,
    ThemeName.normal: ThemeData.dark(),
  },
);
