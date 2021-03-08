import 'dart:math';

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:rua_arcore/demo_page.dart';
import 'package:rua_arcore/resources/rua_colors.dart';
import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ArCoreController arCoreController;

  Random random = new Random();

  var _bottomNavIndex = 0;

  final iconList = <IconData>[
    Icons.dashboard,
    Icons.shopping_bag,
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: RuaColors.minionYellow,
        appBar: AppBar(
          actions: [
            IconButton(
              icon: const Icon(Icons.more_vert),
              tooltip: 'Opções',
              onPressed: () {},
            ),
          ],
          title: Text('RuA'),
          backgroundColor: RuaColors.amethyst,
        ),
        body: SingleChildScrollView(
          child: GridView.count(
            primary: false,
            shrinkWrap: true,
            padding: const EdgeInsets.all(1.5),
            crossAxisCount: 2,
            childAspectRatio: 0.80,
            mainAxisSpacing: 1.0,
            crossAxisSpacing: 1.0,
            children: <Widget>[
              Tooltip(
                message: 'STICKERS',
                child: Container(
                  color: RuaColors.capri,
                  child: Image.network('https://i.imgur.com/shzIn64.gif'),
                ),
              ),
              Tooltip(
                message: 'GRAFFITI',
                child: Container(
                  color: RuaColors.seaGreenCrayola,
                  child: Image.network('https://i.imgur.com/EF7nkE6.gif'),
                ),
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.camera_enhance),
          splashColor: Colors.deepPurpleAccent,
          backgroundColor: RuaColors.amethyst,
          onPressed: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => DemoPage(),
            ),
          ),
        ),
        bottomNavigationBar: AnimatedBottomNavigationBar(
          backgroundColor: RuaColors.magentaCrayola,
          inactiveColor: Colors.white,
          activeColor: RuaColors.seaGreenCrayola,
          activeIndex: _bottomNavIndex,
          icons: iconList,
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.verySmoothEdge,
          leftCornerRadius: 32,
          rightCornerRadius: 32,
          onTap: (index) => setState(() => _bottomNavIndex = index),
          splashColor: Colors.black,
          splashRadius: 20,
          height: 45,
        ),
      );
}
