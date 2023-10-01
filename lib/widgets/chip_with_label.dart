import 'package:flutter/material.dart';

import '../screens/home_screen/widgets/chip_container.dart';

class ChipWithLabel extends StatelessWidget {
  const ChipWithLabel({
    super.key, required this.name,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return ChipContainer(label: name);
  }
}
