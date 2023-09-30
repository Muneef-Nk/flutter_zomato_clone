import 'package:flutter/material.dart';

import '../../../model/home_slider.dart';


class Time_km extends StatelessWidget {
  const Time_km({
    super.key, required this.index,
  });
  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          "assets/images/icons8-clock-96.png",
          width: 18,
        ),
        Text(" ${sliderHome[index].time} • ",
            style: TextStyle(fontSize: 12)),
        Text("${sliderHome[index].km}",
            style: TextStyle(fontSize: 12)),
      ],
    );
  }
}
