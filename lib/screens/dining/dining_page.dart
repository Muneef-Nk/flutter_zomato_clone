import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../model/dining_horiz_model.dart';
import '../../model/dining_must_try.dart';
import '../../model/popular_model_dininig.dart';
import '../../utils/constants.dart';
import '../../widgets/chip_with_label.dart';
import '../../widgets/chip_with_last_icon.dart';
import '../../widgets/filter_chip.dart';
import '../../widgets/profile.dart';
import '../../widgets/rating_container.dart';
import '../../widgets/show_location_bottomsheet.dart';
import '../dining_resto/dining_page.dart';
import '../search/search_screen.dart';

class DiningScreen extends StatefulWidget {
  const DiningScreen({super.key});

  @override
  State<DiningScreen> createState() => _DiningScreenState();
}

class _DiningScreenState extends State<DiningScreen> {
  @override
  Widget build(BuildContext context) {
    YoutubePlayerController videoController = YoutubePlayerController(
      initialVideoId: 'Zu-auUBIJmM',
    );

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leadingWidth: 0,
            automaticallyImplyLeading: false,
            pinned: true,
            floating: true,
            backgroundColor: Color(0xff1c1c1c),
            expandedHeight: 120,
            elevation: 0,
            title: InkWell(
              onTap: () {
                showLocationModalBottomSheet(context);
              },
              child: Row(
                children: [
                  Image.asset(
                    "assets/icons/icon_white.png",
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
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      Text("Kochi, kerala, india",
                          style:
                              TextStyle(color: Colors.grey[300], fontSize: 11))
                    ],
                  ),
                  Icon(
                    Icons.expand_more,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            actions: [
              Row(
                children: [
                  Profile(),
                  SizedBox(
                    width: 15,
                  )
                ],
              )
            ],
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(60),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SearchScreen()));
                },
                child: Container(
                    margin:
                        EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
                    padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                    width: MediaQuery.of(context).size.width * 0.95,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xff353535),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.search,
                              color: primary,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            CarouselSlider(
                              options: CarouselOptions(
                                  autoPlay: true,
                                  scrollPhysics: NeverScrollableScrollPhysics(),
                                  scrollDirection: Axis.vertical,
                                  viewportFraction: 1,
                                  aspectRatio: 9),
                              items: [
                                "Search French fries",
                                "Search Chicken nuggets",
                                "Search Pizza",
                                "Search Hotdog",
                                "Search Chicken sandwich"
                              ].map((i) {
                                return Builder(
                                  builder: (BuildContext context) {
                                    return Text(
                                      '$i',
                                      style: TextStyle(
                                          fontSize: 17.0, color: Colors.white),
                                    );
                                  },
                                );
                              }).toList(),
                            )
                          ],
                        ),
                      ],
                    )),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Row(
                              children: [
                                FirstChip(
                                  label: "Filters",
                                ),
                                ChipWithLabel(
                                  name: "Book Table",
                                ),
                                ChipWithLabel(
                                  name: "Nearest",
                                ),
                                ChipWithLabel(
                                  name: "Rating 4.0+",
                                ),
                                ChipWithLabel(
                                  name: "Pure Veg",
                                ),
                                ChipWithLabel(
                                  name: "Outdoor Seating",
                                ),
                                ChipWithLabel(
                                  name: "Serves Alcohol",
                                ),
                                ChipWithLabel(
                                  name: "Open Now",
                                ),
                                ChipWithLabel(
                                  name: "Fine Dining",
                                ),
                                ChipLabelLastIcon(name: "Cost"),
                                ChipLabelLastIcon(name: "Rating"),
                              ],
                            ));
                      }),
                ),
                // conatiner
                //
                //

                Container(
                  padding: EdgeInsets.only(top: 20),
                  width: double.infinity,
                  height: 310,
                  child: Column(
                    children: [
                      Text("MUST-TRIES IN KOCHI"),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 200,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: diningMustTry.length,
                            itemBuilder: (context, index) {
                              return Stack(children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                              builder: (context) => DiningResto(
                                                    noOfResto: 3,
                                                    image: diningMustTry[index]
                                                        .image,
                                                    name: diningMustTry[index]
                                                        .name,
                                                  )));
                                    },
                                    child: Container(
                                      margin: EdgeInsets.only(right: 5),
                                      width: 190,
                                      height: 200,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  diningMustTry[index].image),
                                              fit: BoxFit.cover)),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 10,
                                  left: 20,
                                  child: Text(
                                    diningMustTry[index].name,
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                )
                              ]);
                            }),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10, right: 0),
                        height: 30,
                        width: 140,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white),
                        child: Row(
                          children: [
                            Text(
                              "See all restaurants",
                              style: TextStyle(fontSize: 12, color: primary),
                            ),
                            Icon(
                              Icons.arrow_forward,
                              size: 12,
                              color: primary,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),

                SizedBox(
                  height: 10,
                ),
                Text("WHAT ARE YOU LOOKING FOR?"),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 270,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: DiningImagesRow1.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              width: 88,
                              height: 115,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                children: [
                                  Container(
                                    width: 160,
                                    height: 80,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Image.network(
                                        DiningImagesRow1[index].image,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(DiningImagesRow1[index].name)
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              width: 88,
                              height: 115,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                children: [
                                  Container(
                                    width: 160,
                                    height: 80,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Image.network(
                                        DiningImagesRow2[index].image,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(DiningImagesRow2[index].name)
                                ],
                              ),
                            ),
                          ],
                        );
                      }),
                ),

                Text("DISCOVER WITH VIBE"),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 220,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 8,
                      itemBuilder: (context, index) {
                        return Stack(children: [
                          //s4enzbnyh98
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Container(
                              margin: EdgeInsets.only(right: 5),
                              width: 150,
                              height: 220,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              // child: YoutubePlayer(
                              //   controller: videoController,
                              //
                              // ),

                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.network(
                                    "https://images.unsplash.com/photo-1528301392571-0dfab3c00216?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8Zm9vZCUyMGltYWdlfGVufDB8MXwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
                                    fit: BoxFit.cover,
                                  )),
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            left: 15,
                            child: Text(
                              "Video ",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                          )
                        ]);
                      }),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("POPULAR RESTAURANTS AROUND YOU"),
                SizedBox(
                  height: 10,
                ),

                SizedBox(
                  child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: diningModelPopular.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin:
                              EdgeInsets.only(bottom: 20, left: 10, right: 10),
                          width: MediaQuery.of(context).size.width * .9,
                          height: diningModelPopular[index].isOffer == false
                              ? 250
                              : 300,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 4,
                                    spreadRadius: 1,
                                    offset: Offset(1, 1))
                              ]),
                          child: Stack(
                            children: [
                              Container(
                                width: double.infinity,
                                height: double.infinity,
                              ),
                              Container(
                                width: double.infinity,
                                height: 200,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20)),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            diningModelPopular[index].image),
                                        fit: BoxFit.cover)),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        diningModelPopular[index].name,
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      Text(
                                        diningModelPopular[index].foodPlace,
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.white),
                                      ),
                                      SizedBox(
                                        height: 30,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                  right: 10,
                                  bottom:
                                      diningModelPopular[index].isOffer == false
                                          ? 75
                                          : 130,
                                  child: RatingContainer(
                                    index: index,
                                    modelList: diningModelPopular,
                                  )),
                              Positioned(
                                  right: 13,
                                  top: 7,
                                  child: Icon(
                                    Icons.favorite_outline,
                                    color: Colors.white,
                                    size: 30,
                                  )),
                              Positioned(
                                top: 15,
                                left: 10,
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 5),
                                  width: 100,
                                  height: 25,
                                  decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.4),
                                      border: Border.all(
                                          color: Colors.grey.shade300),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(
                                      child: Text(
                                    '${diningModelPopular[index].Price} for two',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
                                  )),
                                ),
                              ),
                              diningModelPopular[index].isOffer
                                  ? Positioned(
                                      left: 0,
                                      right: 0,
                                      bottom: 55,
                                      child: Column(
                                        children: [
                                          Container(
                                            width: 300,
                                            height: 40,
                                            decoration: BoxDecoration(
                                                color: Color(0xff256eec),
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            child: Row(
                                              children: [
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Icon(
                                                  Icons.offline_bolt,
                                                  color: Colors.white,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  'Gold offer • flat 15% OFF',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                )
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "Extra bank offers + up to 100% Cashback",
                                            style:
                                                TextStyle(color: Colors.blue),
                                          ),
                                        ],
                                      ),
                                    )
                                  : Text(''),
                              Positioned(
                                bottom: 20,
                                left: 20,
                                child: Text(
                                  diningModelPopular[index].placeNearMe,
                                  style: TextStyle(
                                      color: Colors.grey[600], fontSize: 15),
                                ),
                              ),
                              Positioned(
                                bottom: 20,
                                right: 20,
                                child: Text(diningModelPopular[index].distance,
                                    style: TextStyle(
                                        color: Colors.grey[600], fontSize: 15)),
                              )
                            ],
                          ),
                        );
                      }),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
