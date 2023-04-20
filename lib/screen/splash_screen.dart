import 'package:flutter/material.dart';
import 'package:work_manager/widgets/common/defaultBody.dart';

class SplashScreen extends DefaultBody {
  @override
  Widget buildBody(BuildContext context) {
    return _ScreenBody();
  }
}

class _ScreenBody extends DefaultBody {
  @override
  Widget buildBody(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Text("splash screen"),
      ),
    );
  }
}
