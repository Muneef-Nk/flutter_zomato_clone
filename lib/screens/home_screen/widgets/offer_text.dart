import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

import '../../../model/home_slider.dart';


class OfferText extends StatelessWidget {
  const OfferText({
    super.key, required this.index, required this.size,
  });
  final int index;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
      CrossAxisAlignment.start,
      children: [
        DottedLine(),
        SizedBox(
          height: 7,
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 15,
          ),
          child: Row(
            children: [
              Image.asset(
                "assets/images/offer.png",
                width: 17,
              ),
              SizedBox(
                width: 3,
              ),
              Text(
                sliderHome[index].offer,
                style: TextStyle(
                    color: Color(0xff2970ed),
                    fontSize: size,
                    fontWeight:
                    FontWeight.bold),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
