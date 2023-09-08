import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            floating: false,
             backgroundColor: Colors.white,
           expandedHeight: 100,
            elevation: 0,
            title: Row(
              children: [
                SvgPicture.asset("assets/icons/location.svg", height: 27,),
                SizedBox(width: 8,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Valummel', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),
                    Text("Kochi, kerala, india", style: TextStyle( color: Colors.grey[600], fontSize: 11 ))
                  ],
                )
              ],
            ),
           bottom:  AppBar(
             elevation: 0,
             backgroundColor: Colors.white,
             centerTitle: true,
             title: Container(
               // width: MediaQuery.of(context).size.width*0.90,
               // height: 80,
               decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.circular(10),
                   boxShadow: [
                     BoxShadow(color: Colors.grey.withOpacity(0.2), spreadRadius: 1, blurRadius: 3)
                   ]
               ),
               child: TextFormField(
                 decoration: InputDecoration(
                     prefixIcon:Icon(Icons.search, color: Color(0xffFF4545),),
                     suffixIcon: Icon(Icons.mic, color: Color(0xffFF4545),),
                     hintText: 'Search fried rice',
                     hintStyle: TextStyle(color: Colors.grey),
                   border: InputBorder.none
                 ),
               ),
             ),
           ),
          ),
         Container(
           height: 100,
           child: ListView.builder(
               itemBuilder: (context, index){
                 return Container(
                   width: 100,
                   color: Colors.red,
                 );
               }
           ),
         )
        ],
      ),
    );
  }
}
