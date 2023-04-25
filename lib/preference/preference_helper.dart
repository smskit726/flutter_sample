import 'dart:convert';

import 'package:work_manager/model/settings.dart';
import 'package:work_manager/preference/preference_manager.dart';

class PreferenceHelper {
  static PreferenceManager preferenceManager = PreferenceManager();

  static const String _KEY_ACCESS_SETTINGS = "key_access_settings";

  static void init() {
    preferenceManager.init();
  }

  static void saveSettings(Settings settings) {
    String jsonStr = jsonEncode(settings);
    preferenceManager.saveString(_KEY_ACCESS_SETTINGS, jsonStr);
  }

  static Settings loadSettings() {
    String? jsonStr = preferenceManager.loadString(_KEY_ACCESS_SETTINGS);
    if (jsonStr != null) return Settings.fromJson(jsonDecode(jsonStr));

    return Settings();
  }
}
