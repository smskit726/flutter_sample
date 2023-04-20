import 'package:flutter/material.dart';

abstract class DefaultBody extends StatelessWidget {
  late BuildContext buildContext;

  DefaultBody({super.key});

  @override
  Widget build(BuildContext context) {
    buildContext = context;
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      onStart(timeStamp);
    });

    return buildBody(context);
  }

  Widget buildBody(BuildContext context);

  void onStart(Duration timeStamp) {
    // nothing to do
  }
}
