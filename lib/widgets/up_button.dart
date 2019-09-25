import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../pages/mountains_page.dart';

class UpButton extends StatelessWidget {
  final PageController _pageController;
  UpButton(this._pageController);
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 50,
      width: MediaQuery.of(context).size.width,
      child: Consumer<MyPageNotifier>(
        builder: (context, pageNotifier, child) {
          return GestureDetector(
            onTap: () {
              _pageController.animateToPage(
                1,
                duration: Duration(seconds: 1),
                curve: Curves.fastOutSlowIn,
              );
            },
            child: Container(
              width: MediaQuery.of(context).size.width / 6,
              height: MediaQuery.of(context).size.width / 6,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withOpacity(
                  math.max(
                      0,
                      0.2 -
                          .2 *
                              pageNotifier.offset /
                              MediaQuery.of(context).size.height),
                ),
              ),
              child: child,
            ),
          );
        },
        child: Icon(
          Icons.keyboard_arrow_up,
          color: Colors.white,
          size: 50,
        ),
      ),
    );
  }
}
