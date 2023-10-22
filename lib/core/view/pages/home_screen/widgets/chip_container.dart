import 'package:flutter/material.dart';

class ChipContainer extends StatelessWidget {
  const ChipContainer({
    super.key,
    required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 6),
      padding: EdgeInsets.symmetric(horizontal: 5),
      height: 35,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade400),
          borderRadius: BorderRadius.circular(10)),
      child: Center(
          child: Text(
        label,
        style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
      )),
    );
  }
}
