import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/page_notifier.dart';

class MountainFront extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<PageNotifier>(
      builder: (context, pageNotifier, child) => Positioned(
        bottom: 100 + pageNotifier.offset / 4,
        right: -400,
        child: child,
      ),
      child: Image(
        height: MediaQuery.of(context).size.height * .4,
        fit: BoxFit.cover,
        image: AssetImage('assets/images/mountain_front.png'),
      ),
    );
  }
}
