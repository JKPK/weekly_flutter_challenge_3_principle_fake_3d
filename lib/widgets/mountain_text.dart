import 'package:flutter/material.dart';

import '../styleguide.dart';

class MountainText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 350,
      left: 50,
      child: Text(
        "HELLO",
        style: TextStyle(
          color: Colors.white,
          fontSize: 110,
          fontWeight: FontWeight.bold,
          shadows: [
            Shadow(
              blurRadius: 5.0,
              color: infoBlue,
            ),
          ],
        ),
      ),
    );
  }
}
