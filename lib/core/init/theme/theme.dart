import 'package:ai_app/core/constants/color_constants.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final darkThemeData = ThemeData.dark(useMaterial3: true).copyWith(
      colorScheme: const ColorScheme.dark(primary: ColorConstants.myDarkGreen));
}
