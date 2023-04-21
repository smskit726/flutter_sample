import 'package:flutter/material.dart';
import 'package:work_manager/res/strings.dart';
import 'package:work_manager/res/styles.dart';
import 'package:work_manager/widgets/common/defaultBody.dart';

import '../widgets/custom/appbar.dart';

class HomeScreen extends DefaultBody {
  @override
  Widget buildBody(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(title: Strings.appTitle),
      body: SafeArea(
        child: AppStyle.emptyWidget,
      ),
    );
  }
}
