import 'package:flutter/material.dart';
import 'package:work_manager/model/enums.dart';
import 'package:work_manager/res/strings.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  BaseAppBar({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}

class BaseBottomNavigation extends StatelessWidget {
  final NavigationItem current;
  final ValueChanged<NavigationItem> onSelect;

  BaseBottomNavigation({required this.current, required this.onSelect});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        _buildItem(NavigationItem.home),
        _buildItem(NavigationItem.contact),
        _buildItem(NavigationItem.board),
        _buildItem(NavigationItem.settings),
      ],
      currentIndex: current.index,
      onTap: (index) => onSelect(
        NavigationItem.values[index],
      ),
    );
  }

  BottomNavigationBarItem _buildItem(NavigationItem item) {
    return navigationItems[item.index];
  }

  List<BottomNavigationBarItem> navigationItems = [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: Strings.home),
    BottomNavigationBarItem(icon: Icon(Icons.people), label: Strings.contact),
    BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: Strings.board),
    BottomNavigationBarItem(icon: Icon(Icons.settings), label: Strings.settings),
  ];
}
