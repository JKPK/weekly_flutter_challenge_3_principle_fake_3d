import 'package:flutter/material.dart';

import '../styleguide.dart';

class InfoButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 200,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          border: Border.all(
            color: infoBlue,
            width: 1,
          ),
          borderRadius: BorderRadius.all(
            const Radius.circular(30),
          ),
        ),
        child: Text(
          "Learn more",
          style: buttonTextStyle,
        ),
      ),
    );
  }
}
