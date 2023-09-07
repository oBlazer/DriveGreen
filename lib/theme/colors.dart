import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  bool _isDarkMode = false;

  bool get isDarkMode => _isDarkMode;

  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    notifyListeners();
  }
}

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
);

var lightBackgroundColor = Colors.grey[300];
var darkBackgroundColor = Colors.grey[900];
