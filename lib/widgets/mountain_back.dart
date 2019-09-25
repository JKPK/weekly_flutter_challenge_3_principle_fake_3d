import 'package:flutter/material.dart';

class MountainBack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: -400,
      child: Image(
        height: MediaQuery.of(context).size.height*.8,
        fit: BoxFit.cover,
        image: AssetImage('assets/images/mountain_back.png'),
      ),
    );
  }
}
