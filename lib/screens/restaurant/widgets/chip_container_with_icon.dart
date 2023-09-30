import 'package:flutter/material.dart';


class ChipContainerWithIcon extends StatelessWidget {
  const ChipContainerWithIcon({
    super.key, required this.label, required this.image,
  });

  final String label;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 6),
      padding: EdgeInsets.symmetric(horizontal: 5),
      height: 35,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade400),
          borderRadius: BorderRadius.circular(10)),
      child: Center(child: Row(
        children: [
          Image.asset(image, width: 25,),
          Text(label, style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),),
        ],
      )),
    );
  }
}
