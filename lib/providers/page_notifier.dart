import 'package:flutter/material.dart';

class PageNotifier with ChangeNotifier {
  final _pageController = PageController(
    initialPage: 0,
  );

  PageNotifier() {
    _pageController.addListener(() {
      notifyListeners();
    });
  }

  double get offset => _pageController.offset;

  double get page => _pageController.page;

  PageController get pageController => _pageController;

  void animateToPage(int page) {
    _pageController.animateToPage(
      1,
      duration: Duration(seconds: 1),
      curve: Curves.fastOutSlowIn,
    );
  }
}
