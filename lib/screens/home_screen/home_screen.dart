import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../model/home_slider.dart';
import '../../utils/constants.dart';
import '../../widgets/show_language_bottom_sheet.dart';
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
            pinned: true,
            floating: true,
            backgroundColor: Colors.white,
            expandedHeight: 120,
            elevation: 0,
            title: Row(
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
            bottom: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              title: Container(
                // width: MediaQuery.of(context).size.width*0.90,
                // height: 80,
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
                child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Color(0xffFF4545),
                      ),
                      suffixIcon: Icon(
                        Icons.mic,
                        color: Color(0xffFF4545),
                      ),
                      hintText: 'Search fried rice',
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none),
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
                        Container(
                            margin: EdgeInsets.all(20),
                            width: MediaQuery.of(context).size.width,
                            height: 300,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.shade400,
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
                                        sliderHome[ConIndex].name,
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
                                          Text("*",
                                              style: TextStyle(
                                                  color: Colors.white)),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5, left: 15),
                                  child: Row(
                                    children: [
                                      Text("south indian",
                                          style: TextStyle(fontSize: 12)),
                                      Text("* aravinfd",
                                          style: TextStyle(fontSize: 12)),
                                      Text("133",
                                          style: TextStyle(fontSize: 12)),
                                    ],
                                  ),
                                )
                              ],
                            )),
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
