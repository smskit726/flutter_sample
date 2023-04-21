import 'package:flutter/material.dart';
import 'package:work_manager/res/strings.dart';
import 'package:work_manager/res/styles.dart';
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
              _ThemeSettingArea(),
            ],
          ),
        ),
      ),
    );
  }
}

class _ThemeSettingArea extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ThemeState();
}

class _ThemeState extends State<_ThemeSettingArea> {
  ThemeMode _mode = ThemeMode.light;

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

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildTitleWidget(Strings.themeSetting, Strings.descThemeSetting),
        themeSettingWidget,
      ],
    );
  }

  Widget _buildTitleWidget(String title, [String? description]) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: Theme.of(context).textTheme.titleLarge),
        AppStyle.spaceW5,
        if (description != null) Text(description, style: AppStyle.descriptionTextStyle),
      ],
    );
  }

  Widget _buildRadioButtonCard<T>({required String text, required T value}) {
    return Flexible(
      child: Card(
        child: Column(
          children: [
            Radio(
                value: value,
                groupValue: _mode,
                onChanged: (value) {
                  setState(() {
                    if (value is ThemeMode) _mode = value;
                  });
                }),
            Center(
              child: Text(text, style: Theme.of(context).textTheme.bodyMedium),
            ),
          ],
        ),
      ),
    );
  }
}
