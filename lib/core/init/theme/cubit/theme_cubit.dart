import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../theme.dart';

class ThemeCubit extends Cubit<ThemeData> {
  ThemeCubit() : super(AppTheme.instance.darkThemeData);

  onToogleTheme(ThemeData themeData) {
    emit(state.brightness == Brightness.dark
        ? AppTheme.instance.lightThemeData
        : AppTheme.instance.darkThemeData);
  }
}
