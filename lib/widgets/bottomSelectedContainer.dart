import 'package:flutter/material.dart';

import '../utils/color_constants.dart';

class bottamSelectedContainer extends StatelessWidget {
  const bottamSelectedContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 4,
      decoration: BoxDecoration(
        color: primaryLight,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(10),
          bottomLeft: Radius.circular(10),
        ),
      ),
    );
  }
}
