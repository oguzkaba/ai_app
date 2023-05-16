import 'package:ai_app/core/constants/color_constants.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static AppTheme? _instance;
  static AppTheme get instance {
    _instance ??= AppTheme._init();
    return _instance!;
  }

  AppTheme._init();

  //* LightTheme
  ThemeData get lightThemeData => ThemeData.light(useMaterial3: true).copyWith(
        // inputDecorationTheme: const InputDecorationTheme(
        //     enabledBorder: OutlineInputBorder(
        //         borderSide: BorderSide(color: ColorConstants.myDarkGrey)),
        //     focusedBorder: OutlineInputBorder(
        //         borderSide: BorderSide(color: ColorConstants.myGreen))),
        // iconTheme: const IconThemeData(color: ColorConstants.myDarkGrey),
        colorScheme:
            const ColorScheme.light(primary: ColorConstants.myDarkGreen),
      );

  //* DarkTheme
  ThemeData get darkThemeData => ThemeData.dark(useMaterial3: true).copyWith(
        inputDecorationTheme: _inputDecTheme(),
        iconTheme: const IconThemeData(color: ColorConstants.myDarkGrey),
        textTheme: _textTheme(),
        navigationBarTheme: const NavigationBarThemeData(
            backgroundColor: ColorConstants.myBlack,
            surfaceTintColor: ColorConstants.myBlack,
            indicatorColor: ColorConstants.myDarkGreen),
        colorScheme:
            const ColorScheme.dark(primary: ColorConstants.myDarkGreen),
      );

  TextTheme _textTheme() {
    return const TextTheme(
      titleLarge: TextStyle(
          color: ColorConstants.myDarkGrey, fontWeight: FontWeight.bold),
    );
  }

  InputDecorationTheme _inputDecTheme() {
    return const InputDecorationTheme(
      filled: true,
      fillColor: ColorConstants.myDarkGrey,
      contentPadding: EdgeInsets.fromLTRB(16, 0, 0, 16),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(32)),
          borderSide: BorderSide.none),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(32)),
        borderSide: BorderSide(color: ColorConstants.myGreen),
      ),
    );
  }
}
