import 'package:flutter/material.dart';

class InfoMenuButton extends StatelessWidget {
  const InfoMenuButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 10,
      top: 30,
      child: ClipPath(
        clipper: IconClipper(),
        child: Container(
          width: 30,
          height: 30,
          child: FittedBox(
            child: Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class IconClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    return Path()
      ..moveTo(10, 0)
      ..lineTo(25, 30)
      ..lineTo(0, 30)
      ..lineTo(0, 0)
      ..close();
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
