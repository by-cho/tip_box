import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabInfo {
  final IconData icon;
  final String label;

  const TabInfo({
    required this.icon,
    required this.label,
  });
}

const TABS = [
  TabInfo(
    icon: Icons.home,
    label: '홈',
  ),
  TabInfo(
    icon: CupertinoIcons.money_dollar_circle_fill,
    label: '팁',
  ),
];
