import 'package:flutter/material.dart';


class DividerCenterText extends StatelessWidget {
  final String text;
  const DividerCenterText(BuildContext context, {
    super.key, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider(thickness: 1,)),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Text(text, style: TextStyle(letterSpacing: .1, fontFamily: 'LexendDeca', color: Colors.grey[800]),),
        ),
        Expanded(child: Divider(thickness: 1,))

      ],
    );
  }
}
