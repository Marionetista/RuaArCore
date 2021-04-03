import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:rua_arcore/demo_page.dart';
import 'package:rua_arcore/resources/rua_colors.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _bottomNavIndex = 0;

  final iconList = <IconData>[
    Icons.dashboard,
    Icons.shopping_bag,
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: RuaColors.minionYellow,
        appBar: AppBar(
          title: Text(
            'RuA 404',
            style: TextStyle(fontFamily: 'Bungee'),
          ),
          backgroundColor: RuaColors.amethyst,
          actions: [
            IconButton(
              icon: const Icon(Icons.more_vert),
              tooltip: 'Opções',
              onPressed: () {},
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: GridView.count(
            primary: false,
            shrinkWrap: true,
            padding: const EdgeInsets.all(10.0),
            crossAxisCount: 2,
            childAspectRatio: 0.90,
            // mainAxisSpacing: 20,
            // crossAxisSpacing: 30,
            children: <Widget>[
              Tooltip(
                message: 'STICKERS',
                child: Container(
                  color: RuaColors.capri,
                  child: Image.network('https://i.imgur.com/shzIn64.gif'),
                ),
              ),
              Tooltip(
                message: 'ROUPAS',
                child: Container(
                  color: RuaColors.seaGreenCrayola,
                  child: Image.network('https://i.imgur.com/EF7nkE6.gif'),
                ),
              ),
              Tooltip(
                message: 'DOSKAOPD',
                child: Container(
                  width: 10,
                  height: 30,
                  color: Colors.orange,
                  child: Image.network('https://i.imgur.com/c2XnR0w.gif'),
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
