import 'package:ai_app/core/constants/color_constants.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static AppTheme? _instance;
  static AppTheme get instance {
    _instance ??= AppTheme._init();
    return _instance!;
  }

  AppTheme._init();

  ThemeData get darkThemeData => ThemeData.dark(useMaterial3: true).copyWith(
      colorScheme: const ColorScheme.dark(primary: ColorConstants.myDarkGreen));
}
