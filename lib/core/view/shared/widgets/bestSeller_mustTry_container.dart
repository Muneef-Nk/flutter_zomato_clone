import 'package:flutter/material.dart';

class BestSellerOrMustTryContainer extends StatelessWidget {
  const BestSellerOrMustTryContainer({super.key, required this.label, required this.color});
  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      // width: 80,
      height: 20,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color:color,
      ),
      child: Center(child: Text(label, style: TextStyle(color: Colors.white, fontSize: 9),)),
    );
  }
}
