import 'package:flutter/material.dart';
import 'package:work_manager/res/strings.dart';
import 'package:work_manager/widgets/common/defaultBody.dart';
import 'package:work_manager/widgets/custom/appbar.dart';

class ContactScreen extends DefaultBody {
  @override
  Widget buildBody(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(title: Strings.contact),
      body: SafeArea(
        child: Text("Contact Screen"),
      ),
    );
  }
}
