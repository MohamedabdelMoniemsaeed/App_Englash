import 'package:flutter/material.dart';
import 'package:tuko/theme/theme.dart';

class Mode extends ChangeNotifier {
  ThemeData mode = ThemeApp.boyTheme;
  
  void setmode(ThemeData modes) {
    mode = modes;
    notifyListeners();
  }
}
