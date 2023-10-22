import 'package:carousel_slider/carousel_slider.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/color_constants.dart';
import '../../widgets/profile.dart';
import '../../widgets/show_location_bottomsheet.dart';
import '../search/search_screen.dart';

class MoneyScreen extends StatelessWidget {
  const MoneyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.09),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leadingWidth: 0,
            pinned: true,
            automaticallyImplyLeading: false,
            floating: true,
            backgroundColor: Colors.white,
            expandedHeight: 150,
            flexibleSpace: FlexibleSpaceBar(
              background: ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(
                        20,
                      ),
                      bottomLeft: Radius.circular(20)),
                  child: Image.asset(
                    "assets/images/bg.webp",
                    fit: BoxFit.cover,
                  )),
              title: Text(
                "MONEY",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              centerTitle: true,
            ),
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
                              TextStyle(color: Colors.grey[100], fontSize: 11))
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
                  SizedBox(
                    width: 10,
                  ),
                  Profile(),
                  SizedBox(
                    width: 10,
                  )
                ],
              )
            ],
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "GIFT CARDS",
                  style: TextStyle(color: Colors.grey[700]),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.95,
                  height: 225,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 3, right: 3, top: 3, bottom: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                              width: double.infinity,
                              height: 170,
                              child: Image.asset(
                                "assets/images/giftcard.jpg",
                                fit: BoxFit.cover,
                              )),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10, right: 0),
                        height: 30,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white,
                            border: Border.all(color: Colors.grey.shade300)),
                        child: Row(
                          children: [
                            Text(
                              "Buy now",
                              style: TextStyle(fontSize: 12, color: primary),
                            ),
                            Icon(
                              Icons.arrow_forward,
                              size: 12,
                              color: primary,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      ListTile(
                        title: Text("Claim a Gift Card"),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                          color: Colors.black,
                        ),
                      ),
                      DottedLine(dashColor: Colors.grey),
                      ListTile(
                        title: Text('Gift Card Balance'),
                        subtitle: Text('Balance : ₹0.00'),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                          color: Colors.black,
                        ),
                      ),
                      DottedLine(dashColor: Colors.grey),
                      ListTile(
                        title: Text('Purchase History'),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
