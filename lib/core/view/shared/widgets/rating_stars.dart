import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../model/restaurent_recommeded_model.dart';

class RatingStars extends StatelessWidget {
  const RatingStars({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.amber.withOpacity(0.25),
          ),
          child: RatingBar.builder(
            initialRating: 3,
            minRating: 1,
            itemSize: 15,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemPadding: EdgeInsets.symmetric(horizontal: 2),
            itemBuilder: (context, _) => Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating) {
              print(rating);
            },
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          "${restaurentRecommeded[index].rating} ratings",
          style: TextStyle(fontSize: 12),
        )
      ],
    );
  }
}
