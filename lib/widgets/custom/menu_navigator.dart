import 'package:flutter/material.dart';
import 'package:work_manager/model/enums.dart';

class MenuNavigatorRoutes {
  static const String root = "/";
}

class MenuNavigator extends StatelessWidget {
  final GlobalKey<NavigatorState>? navigatorKey;
  final NavigationItem item;

  MenuNavigator({required this.navigatorKey, required this.item});

  Map<String, WidgetBuilder> _routeBuilder(BuildContext context) {
    return {
      MenuNavigatorRoutes.root: (context) => screen[item]!,
    };
  }

  @override
  Widget build(BuildContext context) {
    final routeBuilders = _routeBuilder(context);
    return Navigator(
      key: navigatorKey,
      initialRoute: MenuNavigatorRoutes.root,
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => routeBuilders[settings.name!]!(context),
        );
      },
    );
  }
}
