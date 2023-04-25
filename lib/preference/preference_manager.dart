import 'package:shared_preferences/shared_preferences.dart';

class PreferenceManager {
  PreferenceManager._internal();
  static final PreferenceManager _instance = PreferenceManager._internal();
  factory PreferenceManager() => _instance;

  SharedPreferences? _prefs;

  void init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  void saveString(String key, String value) {
    _prefs?.setString(key, value);
  }

  Future<bool> clearAllPref() {
    if (_prefs != null) return _prefs!.clear();

    return Future(() => false);
  }

  Future<bool> removePref(String key) {
    if (_prefs != null) return _prefs!.remove(key);

    return Future(() => false);
  }

  String? loadString(String key) {
    return _prefs?.getString(key);
  }
}
