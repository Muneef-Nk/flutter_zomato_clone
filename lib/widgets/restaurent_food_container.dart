import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:zomato_clone/utils/constants.dart';
import 'package:zomato_clone/widgets/rating_stars.dart';

import '../model/restaurent_recommeded_model.dart';
import 'bestSeller_mustTry_container.dart';

class RestaurentFoodContainer extends StatelessWidget {
   RestaurentFoodContainer({
    super.key,
     required this.onPressed, required this.index
  });
final int index;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: (){
            onPressed();
          },
          child: Container(
            width: double.infinity,
            height: 200,
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            restaurentRecommeded[index].veg? Image.asset("assets/icons/veg.png", width:25,):Image.asset("assets/icons/non-veg.png", width: 25,),
                            //best seller conatiner
                            SizedBox(width: 5,),
                            restaurentRecommeded[index].isBestSeller? BestSellerOrMustTryContainer(label: "Best seller",color: Color(0xffFFC300),):BestSellerOrMustTryContainer(label: "Must try",color: Colors.pink,)

                          ],
                        ),
                        SizedBox(height: 10,),
                        Text(restaurentRecommeded[index].itemName, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                        SizedBox(height: 10,),
                         RatingStars(index: index),
                        SizedBox(height: 10,),
                        Text("₹${restaurentRecommeded[index].price}", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                        SizedBox(height: 10,),
                        Text(restaurentRecommeded[index].description, style: TextStyle(fontSize: 12, color: Colors.grey[800]),)
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Stack(
                    children: [
                      Positioned(
                        right: 10,
                        child: Container(
                          width: 170,
                          height: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            // color: Colors.yellowAccent,
                            image: DecorationImage(image: NetworkImage(restaurentRecommeded[0].image), fit: BoxFit.cover)
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 20,
                        right: 45,
                        child: Container(
                          width: 100,
                          height: 40,
                          decoration: BoxDecoration(
                             color: Colors.pink[50],
                              border: Border.all(color: primaryDeep),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Stack(
                              alignment: Alignment.center,
                              children:[
                                Text("ADD", style: TextStyle(fontSize:20, fontWeight: FontWeight.bold, color: primaryDeep),),
                                Positioned(
                                    right: 3,
                                    top: 3,
                                    child: Icon(Icons.add, size:18, color: primaryDeep,))
                              ]),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(height: 10,),
        DottedLine(dashColor: Colors.grey,),
        SizedBox(height: 20,),
      ],
    );
  }
}
