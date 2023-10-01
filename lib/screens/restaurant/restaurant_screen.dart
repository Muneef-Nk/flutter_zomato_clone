import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zomato_clone/screens/restaurant/widgets/chip_container_with_icon.dart';

import '../../model/restaruntSliderModel.dart';
import '../../model/restaurent_recommeded_model.dart';
import '../../provider/foota_item_count.dart';
import '../../utils/constants.dart';
import '../../widgets/bestSeller_mustTry_container.dart';
import '../../widgets/filter_chip.dart';
import '../../widgets/rating_stars.dart';
import '../../widgets/restaurent_food_container.dart';

class RestaurantScreen extends StatelessWidget {
  final String hotelName;
  final String dish;
  final String ratingStar;
  final String place;
  final String time;
  final String km;
  final String rating;

  const RestaurantScreen(
      {super.key,
      required this.hotelName,
      required this.dish,
      required this.ratingStar,
      required this.place,
      required this.time,
      required this.km,
      required this.rating});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          actions: [
            Icon(
              Icons.search,
              color: Colors.black,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.favorite_outline,
              color: Colors.black,
            ),
            SizedBox(
              width: 10,
            ),
            Image.asset("assets/icons/shareblack.png", width: 25,),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                hotelName,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8,
              ),
              RichText(
                  text: TextSpan(
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
                  ])),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10, top: 10),
                    width: 45,
                    height: 25,
                    decoration: BoxDecoration(
                        color: Color(0xff259544),
                        borderRadius: BorderRadius.circular(8)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          ratingStar,
                          style: TextStyle(color: Colors.white),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 4),
                          child: Text(
                            "★",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 7),
                    child: Text(
                      "$rating rating",
                      style: TextStyle(
                          fontSize: 12,
                          decoration: TextDecoration.underline,
                          decorationStyle: TextDecorationStyle.dashed,
                          color: Colors.black),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 250,
                height: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.withOpacity(.1)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/icons8-clock-96.png",
                      height: 16,
                    ),
                    RichText(
                        text: TextSpan(
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
                        ])),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 120,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.95,
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
                          )),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: CarouselSlider(
                        options: CarouselOptions(
                            autoPlay: true,
                            scrollPhysics: NeverScrollableScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            viewportFraction: 1,
                            aspectRatio: .5),
                        items: List.generate(
                          restaurantsSliderModel.length,
                          (index) => Column(
                            children: [
                              Image.asset(
                                restaurantsSliderModel[index].icon,
                                height: 30,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                restaurantsSliderModel[index].title,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                restaurantsSliderModel[index].subtitle,
                                style: TextStyle(
                                    fontSize: 12, color: Colors.grey[800]),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // PageViewDotIndicator(
                    //   currentItem: 0,
                    //   count: 4,
                    //   unselectedColor: Colors.black26,
                    //   selectedColor: Colors.blue,
                    // )
                  ],
                ),
              ),
              SizedBox(
                height: 60,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child:  Row(
                          children: [
                            FirstChip(label: "Filters",),
                            ChipContainerWithIcon(label: "Veg", image: "assets/icons/veg.png",),
                            ChipContainerWithIcon(label: "Non-Veg", image: "assets/icons/non-veg.png",),
                            ChipContainerWithIcon(label: "Top-rated", image: "assets/icons/top-rated.png",),
                            ChipContainerWithIcon(label: "Spicy", image: "assets/icons/spicy.png",),
                            ChipContainerWithIcon(label: "Kid's choice", image: "assets/icons/kid.png",),
                          ],
                        )
                      );
                    }),
              ),
              ExpansionTile(
                initiallyExpanded: true,
                iconColor: Colors.black,
                collapsedIconColor: Colors.black,
                collapsedTextColor: Colors.black,
                textColor: Colors.black,
                // trailing: Icon(Icons.arrow_drop_down),
                title: Text(
                  "Recommended",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                children: [
                  SizedBox(
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: restaurentRecommeded.length,
                        itemBuilder: (context, index){
                      return RestaurentFoodContainer(
                        index: index,
                        onPressed: () {

                          showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              context: context,
                              builder: (context) {
                                return Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.black.withOpacity(0.6),
                                      ),
                                      child: IconButton(
                                        color: Colors.white,
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        icon: Icon(Icons.close),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(left: 15, right: 15, top: 15),
                                      width: double.infinity,
                                      // height: 50,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(20),
                                              topRight: Radius.circular(20))),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width *
                                                0.96,
                                            height: 200,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(20),
                                              image: DecorationImage(image: NetworkImage(restaurentRecommeded[index].image), fit: BoxFit.cover)
                                            ),
                                          ),
                                          SizedBox(height: 10,),
                                          Row(
                                            children: [
                                              restaurentRecommeded[index].veg?Image.asset("assets/icons/veg.png", width: 25,): Image.asset("assets/icons/non-veg.png", width: 25,),
                                              restaurentRecommeded[index].isBestSeller? BestSellerOrMustTryContainer(label: "BestSeller", color: Color(0xffFFC300),):BestSellerOrMustTryContainer(color: Colors.pink,label: "Must try",)
                                            ],
                                          ),
                                          SizedBox(height: 10,),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(restaurentRecommeded[index].itemName, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),

                                              Row(
                                                children: [
                                                  Container(
                                                    width: 30,
                                                    height: 30,
                                                    decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        color: Colors.white,
                                                        border: Border.all(color: Colors.grey.shade300)
                                                    ),
                                                    child: Padding(
                                                      padding: const EdgeInsets.all(3),
                                                      child: Image.asset("assets/icons/share.png", width: 10,),
                                                    ),
                                                  ),
                                                  SizedBox(width: 10,),
                                                  Container(
                                                    width: 30,
                                                    height: 30,
                                                    decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        color: Colors.white,
                                                        border: Border.all(color: Colors.grey.shade300)
                                                    ),
                                                    child: Padding(
                                                      padding: const EdgeInsets.all(3),
                                                      child: Icon(Icons.favorite_outline, color: primaryDeep,size: 20,),
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                          SizedBox(height: 10,),
                                          RatingStars(index: index),
                                          SizedBox(height: 10,),
                                          // Text(restaurentRecommeded[index].description, style: TextStyle(fontSize: 12, color: Colors.grey[800]),),
                                          Text("In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content", style: TextStyle(fontSize: 12, color: Colors.grey[800]),),
                                          SizedBox(height: 30,)
                                        ],
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: Container(
                                        padding: EdgeInsets.only(
                                          left: 10,
                                          right: 10,
                                          // top: 2,
                                          // bottom: 10
                                        ),
                                        width: double.infinity,
                                        height: 80,
                                        color: Colors.white,
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          children: [
                                            Container(
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                    0.3,
                                                height: 50,
                                                decoration: BoxDecoration(
                                                    color: Colors.pink[50],
                                                    border: Border.all(color: primaryDeep),
                                                    borderRadius:
                                                    BorderRadius.circular(10)),
                                                child: Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                                  children: [
                                                    IconButton(
                                                        onPressed: () {
                                                          Provider.of<ItemCount>(context, listen: false).itemDecrement();
                                                        },
                                                        icon: Icon(
                                                          Icons.remove,
                                                          color: primaryDeep,
                                                        )),
                                                    Text(Provider.of<ItemCount>(context).count.toString(), style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                                                    IconButton(
                                                        onPressed: () {
                                                          Provider.of<ItemCount>(context, listen: false).itemIncrement();
                                                        },
                                                        icon: Icon(
                                                          Icons.add,
                                                          color: primaryDeep,
                                                        )),
                                                  ],
                                                )),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                                  0.6,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                  color: primaryLight,
                                                  borderRadius:
                                                  BorderRadius.circular(10)),
                                              child: Center(
                                                  child: Text(
                                                    "Add item ₹345",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        color: Colors.white),
                                                  )),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                );
                              });
                        },
                      );

                    }),
                  )

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
