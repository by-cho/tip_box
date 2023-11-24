import 'package:flutter/material.dart';

import '../const/tabs.dart';

class NavBottomBarWidget extends StatefulWidget {
  const NavBottomBarWidget({super.key});

  @override
  State<NavBottomBarWidget> createState() => _NavBottomBarWidgetState();
}

class _NavBottomBarWidgetState extends State<NavBottomBarWidget>
    with TickerProviderStateMixin {
  late final TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(
      length: TABS.length,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: TABS
            .map(
              (e) => BottomNavigationBarItem(
                icon: Icon(
                  e.icon,
                ),
                label: e.label,
              ),
            )
            .toList(),
      ),
    );
  }
}
