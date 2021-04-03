import 'dart:math';

import 'package:flutter/material.dart';
import 'package:rua_arcore/resources/rua_colors.dart';
import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
import 'package:vector_math/vector_math_64.dart' as vector;

class DemoPage extends StatefulWidget {
  @override
  _DemoPageState createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  ArCoreController arCoreController;

  Random random = new Random();
  int index = 0;

  List appBarColors = [
    RuaColors.magentaCrayola,
    RuaColors.amethyst,
    RuaColors.capri
  ];

  @override
  void initState() {
    setState(() => index = random.nextInt(3));
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(
            'RuA 404 RA',
            style: TextStyle(
              fontFamily: 'Bungee',
            ),
          ),
          backgroundColor: appBarColors[index],
        ),
        body: ArCoreView(
          onArCoreViewCreated: _onArCoreCreated,
          enablePlaneRenderer: false,
        ),
      );

  _onArCoreCreated(ArCoreController controller) {
    arCoreController = controller;

    _addSphere(arCoreController);
  }

  _addSphere(ArCoreController controller) {
    final material = ArCoreMaterial(
      color: RuaColors.seaGreenCrayola,
      reflectance: 0,
    );
    final sphere = ArCoreSphere(
      materials: [material],
      radius: 0.2,
    );
    final node = ArCoreNode(
      name: 'Sphere',
      shape: sphere,
      position: vector.Vector3(0, -1, -1),
      rotation: vector.Vector4(0, 0, 0, 0),
    );
    controller.addArCoreNode(node);

    // final something = ArCoreAugmentedImage.fromMap(map);
    // final image = ArCoreImage();
  }

  @override
  void dispose() {
    arCoreController.dispose();

    super.dispose();
  }
}
