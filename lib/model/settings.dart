import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:work_manager/model/enums.dart';
part 'settings.g.dart';

@JsonSerializable()
class Settings {
  ThemeMode themeMode;
  FontScale fontScale;
  // 설정 항목 추가시 추가

  Settings([
    this.themeMode = ThemeMode.light,
    this.fontScale = FontScale.normal,
  ]);

  factory Settings.fromJson(Map<String, dynamic> json) => _$SettingsFromJson(json);
  Map<String, dynamic> toJson() => _$SettingsToJson(this);
}
