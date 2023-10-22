import 'package:flutter/material.dart';
class FirstChip extends StatelessWidget {
  const FirstChip({
    super.key, required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
        margin: EdgeInsets.only(right: 6),
        padding: EdgeInsets.symmetric(horizontal: 5),
        height: 35,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade400),
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            Icon(
              Icons.tune,
              size: 18,
            ),
            Text(label, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),),
            Icon(Icons.arrow_drop_down),
          ],
        ),
      ),
    );
  }
}
