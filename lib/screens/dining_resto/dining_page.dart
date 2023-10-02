import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../model/dining_resto_model.dart';
import '../../widgets/chip_with_label.dart';
import '../../widgets/filter_chip.dart';

class DiningResto extends StatefulWidget {
  const DiningResto({super.key, required this.noOfResto, required this.name, required this.image});

  final int noOfResto;
  final String name;
  final String image;

  @override
  State<DiningResto> createState() => _DiningRestoState();
}

class _DiningRestoState extends State<DiningResto> {

  bool isLoading=false;


  bool isShimmerLoading=false;

  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds: 3),(){
      setState(() {
        isShimmerLoading=true;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:isShimmerLoading? CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Color(0xff1c1c1c),
            titleTextStyle: TextStyle(color: Colors.blue),
            elevation: 0,
            pinned: true,
            expandedHeight: 220,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(widget.image, fit: BoxFit.cover,),
              title: Text(widget.name, style: TextStyle(color: Colors.white),),
              centerTitle: true,
            ),
            actions: [
              Image.asset("assets/icons/icon_white.png", width: 30,),
              SizedBox(width: 10,)
            ],
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
                              child:  Row(
                                children: [
                                  FirstChip(label: "Filters",),
                                  ChipWithLabel(name: "Nearest",),
                                  ChipWithLabel(name: "Rating 4.0+",),
                                  ChipWithLabel(name: "Pure Veg",),
                                  ChipWithLabel(name: "Outdoor Seating",),
                                ],
                              )
                          );
                        }),
                  ),


                  SizedBox(
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: diningRestoModel.length,
                      itemBuilder: (context, index){
                    return Container(
                      margin: EdgeInsets.only(bottom: 20, left: 10, right: 10),
                      width: MediaQuery.of(context).size.width*.9,
                      height: 300,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                spreadRadius: 1,
                                blurRadius: 3,
                                offset: Offset(1,1)
                            )
                          ]
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 200,
                            child: CarouselSlider.builder(
                              itemCount:
                              diningRestoModel[index].slider.length,
                              itemBuilder: (context, sliderIndex, realIndex) {
                                // final urlImages =
                                // diningRestoModel[index].slider[sliderIndex];
                                return Container(
                                  width: double.infinity,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          topRight:
                                          Radius.circular(15)),
                                      child: Image.network(
                                        diningRestoModel[index].slider[sliderIndex],
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
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 10),
                            child: Text(diningRestoModel[index].name, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 5),
                            child: Row(
                              children: [
                                Text('${diningRestoModel[index].km}km  • ', style: TextStyle(fontSize: 12, color: Colors.grey),),
                                Text('${diningRestoModel[index].place}  • ', style: TextStyle(fontSize: 12, color: Colors.grey),),
                                Text('₹${diningRestoModel[index].price} for two', style: TextStyle(fontSize: 12, color: Colors.grey),),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 5),
                            child: Text('cafe ${diningRestoModel[index].foodIiem} Fast Food', style: TextStyle(fontSize: 13, color: Colors.grey[700])),
                          )
                        ],
                      ),
                    );
                  }),
                  ),
                  SizedBox(height: 20,),
                  Text("zomato", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey, fontSize: 30, fontFamily: 'zomato', fontStyle: FontStyle.italic),),
                  SizedBox(height: 20,),


                ]),
          )
        ],
      ):shimmerLoading(),
    );
  }

  Widget shimmerLoading(){
    return Shimmer.fromColors(baseColor: Colors.grey.withOpacity(.3),
        highlightColor: Colors.white,
      child: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 200,
                color: Colors.white,
              ),
              SizedBox(height: 20,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      width: 100,
                      height: 40,
                      color: Colors.white,
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      width: 100,
                      height: 40,
                      color: Colors.white,
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      width: 100,
                      height: 40,
                      color: Colors.white,
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      width: 100,
                      height: 40,
                      color: Colors.white,
                    ),

                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
