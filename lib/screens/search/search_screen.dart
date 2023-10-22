import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../model/popular_dishes_model.dart';
import '../../utils/color_constants.dart';
class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
          elevation: 0,
          automaticallyImplyLeading: false,
        toolbarHeight: 60,
        title: Container(
          margin: EdgeInsets.only(top: 10),
            height: 40,
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
            child: Center(
              child: TextFormField(
                autofocus: true,
              decoration: InputDecoration(
                  prefixIcon: IconButton(
                    color: Color(0xffFF4545), onPressed: () {
                      Navigator.of(context).pop();
                  }, icon: Icon(Icons.arrow_back_ios),
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
      body: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: ListView(
          children: [
            SizedBox(height: 20,),
            Text("POPULAR DISHES", style: TextStyle(color: Colors.black45),),
            SizedBox(height: 10,),
            SizedBox(
              height: 600 ,
              child: ListView.builder(
                itemCount: popularDishesModel.length,
                physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index){
                    return ListTile(
                      leading: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade400,
                              spreadRadius: 1,
                              blurRadius: 2,
                              offset: Offset(1,2)
                            )
                          ]
                        ),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.network(popularDishesModel[index].image, fit: BoxFit.cover,width: 10,)),
                      ),
                      title: Text(popularDishesModel[index].title, style: TextStyle(color: Colors.black),),
                      subtitle: Text(popularDishesModel[index].subTitle),
                    );
                  },
              ),
            )
          ],
        ),
      ),
    );
  }
}
