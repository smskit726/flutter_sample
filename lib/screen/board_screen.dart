import 'package:flutter/material.dart';
import 'package:work_manager/res/strings.dart';
import 'package:work_manager/widgets/common/defaultBody.dart';
import 'package:work_manager/widgets/custom/appbar.dart';

class BoardScreen extends DefaultBody {
  @override
  Widget buildBody(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(title: Strings.board),
      body: SafeArea(
        child: Text("Board Screen"),
      ),
    );
  }
}
