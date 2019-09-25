import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

import 'package:provider/provider.dart';

import 'mountains_image_page.dart';
import 'mountains_info_page.dart';

class MountainsPage extends StatelessWidget {
  final _pageController = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);

    return ChangeNotifierProvider(
      builder: (context) => MyPageNotifier(_pageController),
      child: PageView(
        controller: _pageController,
        scrollDirection: Axis.vertical,
        children: <Widget>[
          MountainsImagePage(_pageController),
          MountainsInfoPage(),
        ],
      ),
    );
  }
}

class MyPageNotifier with ChangeNotifier {
  double _offset = 0;
  double _page = 0;

  MyPageNotifier(PageController pageController) {
    pageController.addListener(() {
      _offset = pageController.offset;
      _page = pageController.page;
      notifyListeners();
    });
  }

  double get offset => _offset;

  double get page => _page;
}
