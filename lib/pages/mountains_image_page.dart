import 'package:flutter/material.dart';

import '../styleguide.dart';
import '../widgets/mountain_cloud.dart';
import '../widgets/mountain_back.dart';
import '../widgets/mountain_filler.dart';
import '../widgets/mountain_text.dart';
import '../widgets/mountain_front.dart';
import '../widgets/mountain_up_button.dart';

class MountainsImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(color: skyBlue),
          child: null,
        ),
        MountainCloud(),
        MountainBack(),
        MountainFiller(),
        MountainText(),
        MountainFront(),
        MountainUpButton(),
      ],
    );
  }
}
