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

  PageController get pageController => _pageController;

  void animateToPage(int page) {
    _pageController.animateToPage(
      1,
      duration: Duration(milliseconds: 1500),
      curve: Curves.fastOutSlowIn,
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
