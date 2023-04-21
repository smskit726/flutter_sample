import 'package:flutter/material.dart';
import 'package:work_manager/model/enums.dart';
import 'package:work_manager/widgets/common/defaultBody.dart';
import 'package:work_manager/widgets/custom/appbar.dart';
import 'package:work_manager/widgets/custom/menu_navigator.dart';

class BaseScreen extends DefaultBody {
  @override
  Widget buildBody(BuildContext context) {
    return _ScreenBody();
  }
}

class _ScreenBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BodyState();
}

class _BodyState extends State<_ScreenBody> {
  NavigationItem _current = NavigationItem.home;

  final _navigatorKeys = {
    NavigationItem.home: GlobalKey<NavigatorState>(),
    NavigationItem.contact: GlobalKey<NavigatorState>(),
    NavigationItem.board: GlobalKey<NavigatorState>(),
    NavigationItem.settings: GlobalKey<NavigatorState>(),
  };

  void _selectItem(NavigationItem navigationItem) {
    if (navigationItem == _current) {
      _navigatorKeys[navigationItem]?.currentState?.popUntil((route) => route.isFirst);
    } else {
      setState(() => _current = navigationItem);
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        bottomNavigationBar: BaseBottomNavigation(
          current: _current,
          onSelect: _selectItem,
        ),
        body: SafeArea(
          child: Stack(
            children: [
              _buildOffstageNavigator(NavigationItem.home),
              _buildOffstageNavigator(NavigationItem.contact),
              _buildOffstageNavigator(NavigationItem.board),
              _buildOffstageNavigator(NavigationItem.settings),
            ],
          ),
        ),
      ),
      onWillPop: () async {
        final bool isFirstRouteInCurrent = !await _navigatorKeys[_current]!.currentState!.maybePop();
        if (isFirstRouteInCurrent) {
          if (_current != NavigationItem.home) {
            _selectItem(NavigationItem.home);
            return false;
          }
        }
        return isFirstRouteInCurrent;
      },
    );
  }

  Widget _buildOffstageNavigator(NavigationItem item) {
    // offstage : false 일 경우 tree에서 제거
    return Offstage(
      offstage: _current != item,
      child: MenuNavigator(
        navigatorKey: _navigatorKeys[item],
        item: item,
      ),
    );
  }
}
