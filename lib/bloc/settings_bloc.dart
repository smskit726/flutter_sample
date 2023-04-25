import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:work_manager/model/enums.dart';
import 'package:work_manager/model/settings.dart';
import 'package:work_manager/preference/preference_helper.dart';

class SettingsBloc extends Cubit<Settings> {
  SettingsBloc() : super(Settings(ThemeMode.light, FontScale.normal));

  void loadUserSettings() {
    Settings? settings = PreferenceHelper.loadSettings();
    if (settings != null) {
      emit(settings);
    }
  }

  void saveUserSettings() {}
}
