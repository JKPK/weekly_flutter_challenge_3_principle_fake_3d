import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

import 'package:provider/provider.dart';

import 'mountains_image_page.dart';
import 'mountains_info_page.dart';
import '../providers/page_notifier.dart';

class MountainsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);

    return Material(
      child: ChangeNotifierProvider(
        builder: (context) => PageNotifier(),
        child: Consumer<PageNotifier>(
          builder: (context, pageNotifier, child) {
            return PageView(
              controller: pageNotifier.pageController,
              scrollDirection: Axis.vertical,
              children: <Widget>[
                MountainsImagePage(),
                MountainsInfoPage(),
              ],
            );
          },
        ),
      ),
    );
  }
}
