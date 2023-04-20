import 'package:flutter/material.dart';
import 'package:work_manager/res/strings.dart';
import 'package:work_manager/widgets/common/defaultBody.dart';
import 'package:work_manager/widgets/custom/appbar.dart';

class SettingsScreen extends DefaultBody {
  @override
  Widget buildBody(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(title: Strings.settings),
      body: SafeArea(
        child: Text("Settings Screen"),
      ),
    );
  }
}
