import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ExploreContainer extends StatelessWidget {
  final String title;
  final String subTitle;
  final Color arrowColor;
  final String image;
  const ExploreContainer({
    super.key,
    required this.title,
    required this.subTitle,
    required this.arrowColor,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width * 0.44,
      height: 80,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(color: Color(0xfff5f5f5), spreadRadius: 5, blurRadius: 10)
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                subTitle,
                style: TextStyle(
                  fontSize: 10,
                  color: Color(0xff3877e0),
                ),
              ),
              Container(
                width: 20,
                height: 10,
                decoration: BoxDecoration(
                    color: arrowColor, borderRadius: BorderRadius.circular(20)),
                child: Center(
                    child: Icon(
                  Icons.arrow_forward,
                  size: 10,
                  color: Colors.white,
                )),
              )
            ],
          ),
          SizedBox(
            child: Lottie.asset(
              image,
            ),
          )
        ],
      ),
    );
  }
}
