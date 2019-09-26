import 'dart:ui';

import 'package:flutter/material.dart';

class MountainCloud extends StatefulWidget {
  @override
  _MountainCloudState createState() => _MountainCloudState();
}

class _MountainCloudState extends State<MountainCloud>
    with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: Duration(
        seconds: 120,
      ),
      vsync: this,
    );

    animation = Tween<double>(begin: 0, end: 1).animate(controller)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller.reset();
          controller.forward();
        }
      });

    controller.value = .3;
    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 70,
      left: (MediaQuery.of(context).size.width + 300) * animation.value - 300,
      child: Stack(
        children: <Widget>[
          Opacity(
            opacity: 0.4,
            child: Image(
              width: 300,
              image: AssetImage('assets/images/cloud.png'),
            ),
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
              child: Container(color: Colors.black.withOpacity(0)),
            ),
          ),
        ],
      ),
    );
  }
}
