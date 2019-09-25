import 'package:flutter/material.dart';

class MountainFront extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 100,
      right: -400,
      child: Image(
        height: MediaQuery.of(context).size.height * .4,
        fit: BoxFit.cover,
        image: AssetImage('assets/images/mountain_front.png'),
      ),
    );
  }
}
