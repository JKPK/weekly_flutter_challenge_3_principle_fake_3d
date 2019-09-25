import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/page_notifier.dart';

class MountainBack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<PageNotifier>(
      builder: (context, pageNotifier, child) => Positioned(
        bottom: 0 + pageNotifier.offset / 10,
        right: -400,
        child: child,
      ),
      child: Image(
        height: MediaQuery.of(context).size.height * .8,
        fit: BoxFit.cover,
        image: AssetImage('assets/images/mountain_back.png'),
      ),
    );
  }
}
