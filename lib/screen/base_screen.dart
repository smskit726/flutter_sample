import 'package:flutter/material.dart';
import 'package:work_manager/model/enums.dart';
import 'package:work_manager/preference/preference_helper.dart';
import 'package:work_manager/res/strings.dart';
import 'package:work_manager/screen/main.dart';
import 'package:work_manager/widgets/common/defaultBody.dart';

class BaseScreen extends DefaultBody {
  @override
  Widget buildBody(BuildContext context) {
    return _ScreenBody();
  }
}

class _ScreenBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => NavigationState();
}

class NavigationState extends State<_ScreenBody> {
  NavigationItem current = NavigationItem.home;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: const Icon(Icons.home_outlined), label: Strings.home),
          BottomNavigationBarItem(icon: const Icon(Icons.people), label: Strings.contact),
          BottomNavigationBarItem(icon: const Icon(Icons.dashboard), label: Strings.board),
          BottomNavigationBarItem(icon: const Icon(Icons.settings), label: Strings.settings),
        ],
        currentIndex: current.index,
        onTap: _handleOnTapNavigationItem,
      ),
      body: screenMap[current],
    );
  }

  // event handle
  void _handleOnTapNavigationItem(int index) {
    // 현재 설정메뉴일 경우 => 설정 다시 불러오기
    if (current == NavigationItem.settings) {
      AppState? appState = context.findAncestorStateOfType<AppState>();
      appState?.setState(() {
        appState.settings = PreferenceHelper.loadSettings();
      });
    }

    setState(() {
      current = NavigationItem.values[index];
    });
  }
}
