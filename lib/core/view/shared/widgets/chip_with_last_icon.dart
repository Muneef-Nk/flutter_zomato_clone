import 'package:flutter/material.dart';


class ChipLabelLastIcon extends StatelessWidget {
  const ChipLabelLastIcon({
    super.key, required this.name,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 6),
      padding: EdgeInsets.symmetric(horizontal: 5),
      height: 35,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade400),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Text(name,
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 13)),
          Icon(Icons.arrow_drop_down),
        ],
      ),
    );
  }
}
