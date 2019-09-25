import 'package:flutter/material.dart';

import '../styleguide.dart';
import '../widgets/cloud.dart';
import '../widgets/mountain_back.dart';
import '../widgets/mountain_front.dart';
import '../widgets/up_button.dart';

class MountainsImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(color: skyBlue),
          child: null,
        ),
        Cloud(),
        MountainBack(),
        MountainFiller(),
        MountainFront(),
        UpButton(),
      ],
    );
  }
}

class MountainFiller extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      child: Container(
        height: 100,
        width: MediaQuery.of(context).size.width,
        color: darkBackground,
        child: null,
      ),
    );
  }
}
