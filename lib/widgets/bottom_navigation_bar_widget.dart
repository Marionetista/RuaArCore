import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:rua_arcore/resources/rua_colors.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({
    @required this.activeIndex,
    @required this.icons,
    @required this.onTap,
  }) : super();

  final int activeIndex;
  final List<IconData> icons;
  final dynamic Function(int) onTap;

  @override
  Widget build(BuildContext context) =>  AnimatedBottomNavigationBar(
          backgroundColor: RuaColors.magentaCrayola,
          inactiveColor: Colors.white,
          activeColor: RuaColors.seaGreenCrayola,
          activeIndex: activeIndex,
          icons: icons,
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.verySmoothEdge,
          leftCornerRadius: 32,
          rightCornerRadius: 32,
          onTap: onTap,
          splashColor: Colors.black,
          splashRadius: 20,
          height: 45,
        );
}
