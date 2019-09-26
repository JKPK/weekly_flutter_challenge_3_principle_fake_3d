import 'dart:math' as math;

import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../styleguide.dart';
import '../widgets/info_button.dart';
import '../widgets/info_menu_button.dart';
import '../widgets/info_title.dart';
import '../widgets/info_description.dart';
import '../providers/page_notifier.dart';

class MountainsInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          child: Container(
            color: darkBackground,
          ),
        ),
        InfoMenuButton(),
        InfoTitle(),
        InfoDescription(),
        InfoButton(),
        Consumer<PageNotifier>(
          builder: (context, pageNotifier, child) {
            final opacity = (MediaQuery.of(context).size.height -
                        pageNotifier.offset) <
                    MediaQuery.of(context).size.height * .1
                ? (MediaQuery.of(context).size.height - pageNotifier.offset) /
                    (MediaQuery.of(context).size.height * .1)
                : 1.0;

            return Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.black.withOpacity(math.min(1.0, opacity * 10)),
                    Colors.black.withOpacity(opacity),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
