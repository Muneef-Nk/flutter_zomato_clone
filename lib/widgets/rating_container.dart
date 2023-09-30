import 'package:flutter/material.dart';

import '../model/home_slider.dart';

class RatingContainer extends StatelessWidget {
  const RatingContainer({
    super.key, required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
      EdgeInsets.only(right: 10, top: 10),
      width: 45,
      height: 25,
      decoration: BoxDecoration(
          color: Color(0xff259544),
          borderRadius:
          BorderRadius.circular(8)),
      child: Row(
        mainAxisAlignment:
        MainAxisAlignment.center,
        children: [
          Text(
            sliderHome[index].rating,
            style:
            TextStyle(color: Colors.white),
          ),
          Padding(
            padding: const EdgeInsets.only(
                bottom: 4),
            child: Text(
              "★",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
}
