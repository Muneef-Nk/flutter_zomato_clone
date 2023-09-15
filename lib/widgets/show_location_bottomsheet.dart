
import 'package:flutter/material.dart';
import 'package:zomato_clone/utils/constants.dart';
Future<dynamic> showLocationModalBottomSheet(BuildContext context) {
  return showModalBottomSheet(
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
              width: double.infinity,
              height: 550,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(15), topLeft: Radius.circular(15))
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Padding(
                    padding: const EdgeInsets.only(left: 20, top: 10),
                    child: Text("Select a location", style: TextStyle(fontSize: 20),),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    width: MediaQuery.of(context).size.width*0.90,
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
                          hintText: 'Search for area, street name...',
                          hintStyle: TextStyle(color: Colors.grey),
                          border: InputBorder.none),
                    ),
                  ),

                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: MediaQuery.of(context).size.width*0.90,
                      height: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white
                      ),
                      child: ListTile(
                        leading: Icon(Icons.location_disabled, color: primary,),
                        title: Text("location permission not enabled", style: TextStyle(color: primary),),
                        trailing: Icon(Icons.arrow_forward_ios, size: 20,),
                        subtitle: Text("Tap here to enable permission for a better experience"),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("powered by ", style: TextStyle(fontSize: 10, color: Colors.grey, letterSpacing: .5),),
                      Image.asset("assets/images/google.png", width: 50,)
                    ],
                  )
                ],
              ),
            ),



          ],
        );
      });
}