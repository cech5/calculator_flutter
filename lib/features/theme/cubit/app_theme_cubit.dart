import 'package:bloc/bloc.dart';
import 'package:calculator_flutter/features/theme/themes/app_themes.dart';
import 'package:flutter/material.dart';

class AppThemeCubit extends Cubit<ThemeData> {
  AppThemeCubit() : super(AppTheme.darkTheme);

  void toogleTheme() {
    if (state == AppTheme.lighTheme) {
      emit(AppTheme.darkTheme);
    } else {
      emit(AppTheme.lighTheme);
    }
  }
}
