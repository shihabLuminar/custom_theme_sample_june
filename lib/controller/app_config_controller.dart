import 'package:flutter/material.dart';

class AppConfigController with ChangeNotifier {
  bool isDark = false;
  onToggleTheme(bool value) {
    isDark = value;
    notifyListeners();
  }
}
