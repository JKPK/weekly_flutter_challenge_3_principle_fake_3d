import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/page_notifier.dart';

class MountainFront extends StatelessWidget {
  final Offset mountainOffset;

  MountainFront(this.mountainOffset);

  @override
  Widget build(BuildContext context) {
    return Consumer<PageNotifier>(
      builder: (context, pageNotifier, child) => Positioned(
        bottom: -mountainOffset.dy + 100 + pageNotifier.offset / 4,
        right: -mountainOffset.dx - 400,
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
