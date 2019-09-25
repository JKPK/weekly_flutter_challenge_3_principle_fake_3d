import 'dart:ui';

import 'package:flutter/material.dart';

class Cloud extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: Stack(
        children: <Widget>[
          Opacity(
            opacity: 0.4,
            child: Image(
              image: AssetImage('assets/images/cloud.png'),
            ),
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
              child: Container(color: Colors.black.withOpacity(0)),
            ),
          ),
        ],
      ),
    );
  }
}
