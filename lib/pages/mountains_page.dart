import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../styleguide.dart';
import '../widgets/cloud.dart';
import '../widgets/mountain_back.dart';
import '../widgets/mountain_front.dart';

class MountainsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(color: skyBlue),
          child: null,
        ),
        Cloud(),
        MountainBack(),
        MountainFront(),
      ],
    );
  }
}
