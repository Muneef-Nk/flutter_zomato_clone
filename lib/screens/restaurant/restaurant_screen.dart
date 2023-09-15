import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../model/home_slider.dart';

class RestaurantScreen extends StatelessWidget {

  final String hotelName;
  final String dish;
  final String ratingStar;
  final String place;
  final String time;
  final String km;
  final String rating;

  const RestaurantScreen({super.key, required this.hotelName, required this.dish, required this.ratingStar, required this.place, required this.time, required this.km, required this.rating});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios,color: Colors.black,), onPressed: (){
          Navigator.of(context).pop();
        },),
        actions: [
          Icon(Icons.search, color: Colors.black,),SizedBox(width: 10,),
          Icon(Icons.favorite_outline,color: Colors.black,),SizedBox(width: 10,),
          Icon(Icons.share,color: Colors.black,),SizedBox(width: 10,),
          Icon(Icons.more_vert,color: Colors.black,),SizedBox(width: 10,),
        ],
      ),
      body: Center(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(hotelName,style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
           SizedBox(height: 8,),
            RichText(text: TextSpan(
              text: "$dish ",
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  letterSpacing: 1,
                  fontSize: 10,
                  color: Colors.grey,
                ),
              children: [
                TextSpan(
                  text: "• $place ",
                  style: TextStyle(
                    fontStyle: FontStyle.normal,
                    letterSpacing: 1,
                    fontSize: 10,
                    color: Colors.grey,
                  ),
                ),
              ]
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
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
                      Text(ratingStar,
                        style:
                        TextStyle(color: Colors.white),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 4),
                        child: Text("★",
                            style: TextStyle(
                                color: Colors.white,
                              fontSize: 15
                            ),),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 7),
                  child: Text("$rating rating", style: TextStyle(fontSize: 12,decoration: TextDecoration.underline, decorationStyle: TextDecorationStyle.dashed, color: Colors.black),),
                )
              ],
            ),
            SizedBox(height: 10,),
            Container(
              width: 250,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey.withOpacity(.1)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/icons8-clock-96.png", height: 16,),
                  RichText(text: TextSpan(
                      text: " $time • $km",
                      style: TextStyle(
                        fontStyle: FontStyle.normal,
                        letterSpacing: 1,
                        fontSize: 11,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: "│ ",
                          style: TextStyle(
                            fontStyle: FontStyle.normal,
                            letterSpacing: 1,
                            fontSize: 11,
                            color: Colors.grey,
                          ),
                        ),
                        TextSpan(
                          text: "Kochi Locally",
                          style: TextStyle(
                            fontStyle: FontStyle.normal,
                            letterSpacing: 1,
                            fontSize: 11,
                            color: Colors.black,
                          ),
                        ),
                      ]
                  )),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: MediaQuery.of(context).size.width*0.95,
              height: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.grey.withOpacity(.0),
                      Colors.grey.withOpacity(.4),
                    ],
                  )
              ),
              child:  CarouselSlider(
                options: CarouselOptions(
                    autoPlay: true,
                    scrollPhysics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    viewportFraction: 1,
                    aspectRatio: 9
                ),
                items:[
                  [
                    "nubn",
                    "nubn",
                    "nubn",
                  ],
                  [
                    "ngfng",
                    "nfiu",
                    "nfiu",
                  ],
                  [
                    "ngfng",
                    "nfiu",
                    "nfiu",
                  ]
                ].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Column(
                        children: [
                          Text("${i}"),
                          Text('uy'),
                          Text('$i', style: TextStyle(fontSize: 17.0, color: Colors.black54),),
                        ],
                      );
                    },
                  );
                }).toList(),
              ),
            )

          ],
        ),
      ),
    );
  }
}
