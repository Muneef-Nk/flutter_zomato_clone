import 'package:flutter/material.dart';

Widget socialContainerBSheet(
    {required BuildContext context,
    required String icon,
    required String text}) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.85,
    height: 50,
    decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(15)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(icon),
        ),
        SizedBox(
          width: 20,
        ),
        Text(
          text,
          style: TextStyle(color: Colors.grey[700]),
        )
      ],
    ),
  );
}
