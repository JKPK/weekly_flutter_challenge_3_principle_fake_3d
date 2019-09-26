import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../styleguide.dart';
import '../providers/page_notifier.dart';

class MountainFiller extends StatelessWidget {
  final Offset offset;
  MountainFiller(this.offset);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      child: Consumer<PageNotifier>(
        builder: (context, pageNotifier, child) => Container(
          height: -offset.dy + 105 + pageNotifier.offset / 4,
          width: MediaQuery.of(context).size.width,
          color: darkBackground,
          child: null,
        ),
      ),
    );
  }
}
