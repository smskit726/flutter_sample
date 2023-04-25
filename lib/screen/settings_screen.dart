import 'package:flutter/material.dart';
import 'package:work_manager/model/enums.dart';
import 'package:work_manager/res/strings.dart';
import 'package:work_manager/res/styles.dart';
import 'package:work_manager/screen/main.dart';
import 'package:work_manager/widgets/common/defaultBody.dart';
import 'package:work_manager/widgets/custom/appbar.dart';

class SettingsScreen extends DefaultBody {
  @override
  Widget buildBody(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(
        title: Strings.settings,
        actions: [
          TextButton(onPressed: () {}, child: Text(Strings.complete)),
        ],
      ),
      body: _ScreenBody(),
    );
  }
}

class _ScreenBody extends DefaultBody {
  @override
  Widget buildBody(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          margin: AppStyle.rootContainerMargin,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTitleWidget(Strings.themeSetting, Strings.descThemeSetting),
              _ThemeSettingArea(),
              AppStyle.spaceH20,
              _buildTitleWidget(Strings.fontSizeSetting),
              _FontScaleSettingArea(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTitleWidget(String title, [String? description]) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: Theme.of(buildContext).textTheme.titleLarge),
        AppStyle.spaceW5,
        if (description != null) Text(description, style: AppStyle.descriptionTextStyle),
      ],
    );
  }
}

class _ThemeSettingArea extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ThemeState();
}

class _ThemeState extends State<_ThemeSettingArea> {
  ThemeMode? _mode;

  @override
  void initState() {
    AppState? appState = context.findAncestorStateOfType<AppState>();
    _mode = appState?.settings.themeMode;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget themeSettingWidget = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildRadioButtonCard(text: Strings.lightMode, value: ThemeMode.light),
        AppStyle.spaceW5,
        _buildRadioButtonCard(text: Strings.darkMode, value: ThemeMode.dark),
        AppStyle.spaceW5,
        _buildRadioButtonCard(text: Strings.systemMode, value: ThemeMode.system),
      ],
    );

    return themeSettingWidget;
  }

  Widget _buildRadioButtonCard<T>({required String text, required T value}) {
    return Flexible(
      child: Card(
        child: Column(
          children: [
            Radio(value: value, groupValue: _mode, onChanged: (value) => _handleOnChangeRadio(value)),
            Center(
              child: Text(text, style: Theme.of(context).textTheme.bodyMedium),
            ),
          ],
        ),
      ),
    );
  }

  // event handle
  void _handleOnChangeRadio(Object? object) {
    AppState? appState = context.findAncestorStateOfType<AppState>();
    setState(() {
      if (object is ThemeMode) {
        // 라디오버튼
        _mode = object;
        // 앱
        appState?.setState(() {
          appState.settings.themeMode = object;
        });
      }
    });
  }
}

class _FontScaleSettingArea extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FontScaleState();
}

class _FontScaleState extends State<_FontScaleSettingArea> {
  FontScale _fontScaleValue = FontScale.normal;
  @override
  Widget build(BuildContext context) {
    Widget slider = Slider(
      value: _fontScaleValue.scale,
      divisions: 4,
      min: FontScale.verySmall.scale,
      max: FontScale.veryBig.scale,
      onChanged: (value) => _handleOnChangeSlide(value),
    );

    Widget indicator = Padding(
      padding: AppStyle.marginH5,
      child: Row(
        children: [
          Text(Strings.smaller, textScaleFactor: 1.0),
          const Spacer(),
          Text(Strings.bigger, textScaleFactor: 1.4),
        ],
      ),
    );

    return Column(
      children: [
        slider,
        indicator,
      ],
    );
  }

  // event handle
  void _handleOnChangeSlide(double value) {
    AppState? appState = context.findAncestorStateOfType<AppState>();
    setState(() {
      _fontScaleValue = FontScale.getByScale(double.parse(value.toStringAsFixed(1)));
      // 앱
      appState?.setState(() {
        appState.settings.fontScale = _fontScaleValue;
      });
    });
  }
}
