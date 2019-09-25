import 'package:flutter/material.dart';

import '../styleguide.dart';

class InfoTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 150,
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          "Mt. Baker\nSnoqualmie National Forest",
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          style: titleTextStyle,
        ),
      ),
    );
  }
}
