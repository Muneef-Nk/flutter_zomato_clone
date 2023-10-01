import 'package:flutter/material.dart';


class ProfileSmallContainer extends StatelessWidget {
  const ProfileSmallContainer({
    super.key, required this.icon, required this.text,
  });

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 80,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          // boxShadow: [
          //   BoxShadow(
          //       color: Colors.grey.shade300,
          //       spreadRadius: 1,
          //       blurRadius: 1
          //   )
          // ]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon),
          SizedBox(height: 10,),
          Text(text, style: TextStyle(fontSize: 10),)
        ],
      ),
    );
  }
}
