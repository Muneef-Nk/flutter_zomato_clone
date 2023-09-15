import 'package:carousel_slider/carousel_slider.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../model/home_slider.dart';
import '../../utils/constants.dart';
import '../../widgets/show_language_bottom_sheet.dart';
import '../../widgets/show_location_bottomsheet.dart';
import '../restaurant/restaurant_screen.dart';
import '../search/search_screen.dart';
import 'components/exploreContainer.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List<String> images = [
    "https://images.unsplash.com/photo-1567620905732-2d1ec7ab7445?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8NHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1555939594-58d7cb561ad1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8M3x8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leadingWidth: 0,
            pinned: true,
            floating: true,
            backgroundColor: Colors.white,
            expandedHeight: 110,
            elevation: 0,
            title: InkWell(
              onTap: (){
                showLocationModalBottomSheet(context);
              },
              child: Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/location.svg",
                    height: 27,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Valummel',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      Text("Kochi, kerala, india",
                          style: TextStyle(color: Colors.grey[600], fontSize: 11))
                    ],
                  ),
                  Icon(
                    Icons.expand_more,
                    color: Colors.black,
                  )
                ],
              ),
            ),
            actions: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      showModalBottomSheetLanguage(context);
                    },
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade200),
                          borderRadius: BorderRadius.circular(10)),
                      child: Icon(
                        Icons.translate,
                        color: Colors.black,
                        size: 15,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.red,
                  ),
                  SizedBox(
                    width: 10,
                  )
                ],
              )
            ],
            bottom:PreferredSize(
              preferredSize: Size.fromHeight(60),
              child:  GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SearchScreen()));
                },
                child: Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
                    padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                    width: MediaQuery.of(context).size.width*0.95,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade300,
                              spreadRadius: 1,
                              blurRadius: 4
                          )
                        ]),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.search, color: primary,),
                            SizedBox(width: 5,),
                            CarouselSlider(
                              options: CarouselOptions(
                                  autoPlay: true,
                                  scrollPhysics: NeverScrollableScrollPhysics(),
                                  scrollDirection: Axis.vertical,
                                  viewportFraction: 1,
                                  aspectRatio: 9
                              ),
                              items: ["Search French fries","Search Chicken nuggets","Search Pizza","Search Hotdog","Search Chicken sandwich"].map((i) {
                                return Builder(
                                  builder: (BuildContext context) {
                                    return Text('$i', style: TextStyle(fontSize: 17.0, color: Colors.black54),);
                                  },
                                );
                              }).toList(),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            VerticalDivider(
                              thickness: .7,
                              color: Colors.grey,
                            ),
                            Icon(Icons.mic, color: primary,size: 20,),
                          ],
                        )
                      ],
                    )
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.92,
                  height: 120,
                  margin: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(primaryDeep.value),
                            Color(primaryLight.value),
                          ])),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Expanded(
                          child: Divider(
                        thickness: .4,
                        color: Colors.black,
                      )),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Text(
                          "EXPLORE",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey[700],
                              letterSpacing: 1),
                        ),
                      ),
                      Expanded(
                          child: Divider(
                        thickness: .4,
                        color: Colors.black,
                      )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ExploreContainer(
                      title: "Offers",
                      subTitle: "Flat Discounts",
                      arrowColor: Color(0xff2c76f3),
                      image: "assets/lottie/animation_lmfxv6tj.json",
                    ),
                    ExploreContainer(
                      title: "Gourmet",
                      subTitle: "Selections",
                      arrowColor: primaryLight,
                      image: "assets/lottie/animation_lmfxrltr.json",
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Expanded(
                          child: Divider(
                        thickness: .4,
                        color: Colors.grey[400],
                      )),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Text(
                          "WHAT'S ON YOUR MIND",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey[700],
                              letterSpacing: 1),
                        ),
                      ),
                      Expanded(
                          child: Divider(
                        thickness: .4,
                        color: Colors.grey[400],
                      )),
                    ],
                  ),
                ),
                Container(
                  height: 250,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: horizontalImagesRow1.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              margin: EdgeInsets.all(10),
                              width: 90,
                              height: 90,
                              decoration: BoxDecoration(shape: BoxShape.circle),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: Image.network(
                                    horizontalImagesRow1[index],
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            Container(
                              margin: EdgeInsets.all(10),
                              width: 88,
                              height: 88,
                              decoration: BoxDecoration(shape: BoxShape.circle),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.network(
                                  horizontalImagesRow1[index],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        );
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 6,),
                          child: Chip(label: Text("Nearest")),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 6,),
                          child: Chip(label: Text("Rating 3.3")),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 6,),
                          child: Chip(label: Text("Rating 3.3")),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 6,),
                          child: Chip(label: Text("Rating 3.3")),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 6,),
                          child: Chip(label: Text("Rating 3.3")),
                        ),
                      ],
                    ),
                  ),
                ),
                Text(
                  "18 restaurants delivery to you",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: sliderHome.length,
                    itemBuilder: (context, ConIndex) {
                      return Stack(children: [
                        InkWell(
                           onTap: (){
                             Navigator.of(context).push(MaterialPageRoute(builder: (context)=>RestaurantScreen(
                               dish: sliderHome[ConIndex].item,
                               hotelName:  sliderHome[ConIndex].hotelName,
                               place: "North Indian",
                               ratingStar:  sliderHome[ConIndex].rating,
                               km: sliderHome[ConIndex].km,
                               time: sliderHome[ConIndex].time,
                               rating: "12k",

                             )));
                           },
                          child: Container(
                              margin: EdgeInsets.all(20),
                              width: MediaQuery.of(context).size.width,
                              height:sliderHome[ConIndex].offerStatus? 320:290,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade300,
                                      spreadRadius: 1,
                                      blurRadius: 10,
                                      offset: Offset(1, 1)),
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 200,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          topRight: Radius.circular(15)),
                                    ),
                                    child: CarouselSlider.builder(
                                        itemCount:
                                            sliderHome[ConIndex].slider.length,
                                        itemBuilder: (context, index, realIndex) {
                                          final urlImages =
                                              sliderHome[ConIndex].slider[index];
                                          return Container(
                                            width: double.infinity,
                                            child: ClipRRect(
                                                borderRadius: BorderRadius.only(
                                                    topLeft: Radius.circular(15),
                                                    topRight:
                                                        Radius.circular(15)),
                                                child: Image.network(
                                                  urlImages,
                                                  fit: BoxFit.cover,
                                                )),
                                          );
                                        },
                                        options: CarouselOptions(
                                          autoPlay: true,
                                          viewportFraction: 1,
                                          reverse: false,
                                          autoPlayInterval: Duration(seconds: 7),
                                          // autoPlayAnimationDuration: Duration(milliseconds: 800),
                                          autoPlayCurve: Curves.fastOutSlowIn,
                                          scrollDirection: Axis.horizontal,
                                          // aspectRatio: 1
                                        )),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10, left: 15),
                                        child: Text(
                                          sliderHome[ConIndex].hotelName,
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
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
                                            Text(
                                              sliderHome[ConIndex].rating,
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
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 5, left: 15),
                                    child: Row(
                                      children: [
                                        Text("${sliderHome[ConIndex].item} • ",
                                            style: TextStyle(fontSize: 12)),
                                        Text("${sliderHome[ConIndex].cate} • ",
                                            style: TextStyle(fontSize: 12)),
                                        Text("₹ ${sliderHome[ConIndex].amount} for one",
                                            style: TextStyle(fontSize: 12)),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top:2,left: 15),
                                    child: Row(
                                      children: [
                                        Image.asset("assets/images/icons8-clock-96.png", width: 18,),
                                        Text(" ${sliderHome[ConIndex].time} • ",
                                            style: TextStyle(fontSize: 12)),
                                        Text("${sliderHome[ConIndex].km}",
                                            style: TextStyle(fontSize: 12)),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  sliderHome[ConIndex].offerStatus?  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      DottedLine(),
                                      SizedBox(height: 7,),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 15,),
                                        child: Row(
                                          children: [
                                            Image.asset("assets/images/offer.png", width: 17,),
                                            SizedBox(width: 3,),
                                            Text(sliderHome[ConIndex].offer,style: TextStyle(color: Color(0xff2970ed),fontWeight: FontWeight.bold),),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ):SizedBox()
                                ],
                              ),),
                        ),
                        Positioned(
                          top: 20,
                          right: 15,
                          child: Row(
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.favorite_outline,
                                    color: Colors.white,
                                    size: 30,
                                  )),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.more_vert,
                                    color: Colors.white,
                                    size: 30,
                                  ))
                            ],
                          ),
                        )
                      ]);
                    }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
