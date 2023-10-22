import 'package:flutter/material.dart';

class SocialContainer extends StatelessWidget {
  final String icon;
  final Function() onPressed;
  const SocialContainer({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed();
      },
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            // color: Colors.red
            border: Border.all(color: Colors.grey.shade300)),
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Image.asset(icon),
        ),
      ),
    );
  }
}
