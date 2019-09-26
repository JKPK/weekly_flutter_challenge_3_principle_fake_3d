import 'package:flutter/material.dart';

import '../styleguide.dart';
import '../widgets/mountain_cloud.dart';
import '../widgets/mountain_back.dart';
import '../widgets/mountain_filler.dart';
import '../widgets/mountain_text.dart';
import '../widgets/mountain_front.dart';
import '../widgets/mountain_up_button.dart';

class MountainsImagePage extends StatefulWidget {
  @override
  _MountainsImagePageState createState() => _MountainsImagePageState();
}

class _MountainsImagePageState extends State<MountainsImagePage>
    with SingleTickerProviderStateMixin {
  Offset _mountainsOffset = Offset(0.0, 0.0);
  Animation<double> _mountainsAnimation;
  AnimationController _mountainsController;

  @override
  void initState() {
    _mountainsController = AnimationController(
        duration: const Duration(milliseconds: 500), vsync: this);
    _mountainsAnimation =
        Tween<double>(begin: 1, end: 0).animate(_mountainsController)
          ..addListener(() {
            setState(() {
              _mountainsOffset = Offset(
                  _mountainsOffset.dx * _mountainsAnimation.value,
                  _mountainsOffset.dy * _mountainsAnimation.value);
            });
          });

    super.initState();
  }

  @override
  void dispose() {
    _mountainsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanUpdate: (offset) {
        setState(() {
          _mountainsController.stop();
          var translate =
              _mountainsOffset.translate(offset.delta.dx, offset.delta.dy);
          if (translate.dx.abs() < 200) {
            _mountainsOffset = _mountainsOffset.translate(offset.delta.dx, 0);
          }
          if (translate.dy.abs() < 200) {
            _mountainsOffset = _mountainsOffset.translate(0, offset.delta.dy);
          }
        });
      },
      onPanEnd: (something) {
        _mountainsController.reset();
        _mountainsController.forward();
      },
      child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  skyBlue,
                  Colors.white,
                  Colors.white,
                ],
              ),
            ),
            child: null,
          ),
          MountainCloud(),
          MountainBack(
            Offset(
              _mountainsOffset.dx / 25,
              _mountainsOffset.dy / 25,
            ),
          ),
          MountainFiller(
            Offset(
              _mountainsOffset.dx / 5,
              _mountainsOffset.dy / 5,
            ),
          ),
          MountainText(),
          MountainFront(
            Offset(
              _mountainsOffset.dx / 5,
              _mountainsOffset.dy / 5,
            ),
          ),
          MountainUpButton(),
        ],
      ),
    );
  }
}
