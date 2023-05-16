import 'package:flutter/material.dart';

enum ThemeModeType { light, dark }

class ThemeModel extends ChangeNotifier {
  ThemeModeType _themeMode = ThemeModeType.dark;

  ThemeModeType get themeMode => _themeMode;

  void toggleTheme() {
    _themeMode = _themeMode == ThemeModeType.light
        ? ThemeModeType.dark
        : ThemeModeType.light;
    notifyListeners();
  }
}
