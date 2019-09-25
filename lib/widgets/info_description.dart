import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../styleguide.dart';
import '../providers/page_notifier.dart';

class InfoDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final pageController = Provider.of<PageNotifier>(context).pageController;

    return Positioned(
      top: 265,
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          "The Mount Baker–Snoqualmie National Forest in Washington is a National Forest extending more than 140 miles (230 km) along the western slopes of the Cascade Range from the Canada–US border to the northern boundary of Mount Rainier National Park",
          style: descriptionTextStyle.copyWith(
            height: descriptionTextStyle.height +
                (MediaQuery.of(context).size.height -
                pageController.offset)/100,
          ),
        ),
      ),
    );
  }
}
