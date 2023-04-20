import 'package:flutter/material.dart';
import 'package:work_manager/res/strings.dart';
import 'package:work_manager/screen/contact_screen.dart';
import 'package:work_manager/widgets/common/defaultBody.dart';

import '../widgets/custom/appbar.dart';

class HomeScreen extends DefaultBody {
  @override
  Widget buildBody(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(title: Strings.appTitle),
      body: SafeArea(
        child: Column(
          children: [
            OutlinedButton(
                onPressed: () => Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return ContactScreen();
                      },
                    )),
                child: Text("test")),
          ],
        ),
      ),
    );
  }
}
