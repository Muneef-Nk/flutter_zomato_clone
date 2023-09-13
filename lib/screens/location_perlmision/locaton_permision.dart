import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:zomato_clone/home_root.dart';
import 'package:zomato_clone/utils/constants.dart';

class LocationPermission extends StatelessWidget {
  const LocationPermission({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         Column(
           children: [
             //https://cdni.iconscout.com/illustration/premium/thumb/location-tracking-app-4475005-3714158.png
             Center(child: Lottie.asset("assets/lottie/animation_lmf5j88j.json", height: 300)),
             Text("We don't have your location, yet!", style: TextStyle(fontSize: 23),),
             SizedBox(height: 10,),
             Text("Set your location to start exploring", style: TextStyle(fontSize: 16),),
             Text("restaurants near you", style: TextStyle(fontSize: 16),),

             SizedBox(height: 30,),
             InkWell(
               onTap: (){
                 showDialog(context: context, builder: (context){
                   return AlertDialog(
                     content: SingleChildScrollView(
                         child: Text("It look like you have turned off permissions required for this feature. If can be enabled under phone setting > Apps > Zomato > Permission")
                     ),
                     actions: [
                       TextButton(onPressed: (){
                         Navigator.of(context).pop();
                       }, child: Text("GO TO SETTINGS"))
                     ],
                   );
                 });
               },
               child: Container(
                 width: MediaQuery.of(context).size.width*0.95,
                 height: 60,
                 decoration: BoxDecoration(
                     color: primaryLight,
                     borderRadius: BorderRadius.circular(10)
                 ),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Icon(Icons.my_location, color: Colors.white,),
                     SizedBox(width: 5,),
                     Text("Enable device location", style: TextStyle(fontSize: 17, color: Colors.white),)
                   ],
                 ),
               ),
             ),
             SizedBox(height: 20,),
             InkWell(
               onTap: (){
                 Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>HomeRoot()));
               },
               child: Container(
                 width: MediaQuery.of(context).size.width*0.95,
                 height: 60,
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),
                     border: Border.all(color: primaryLight)
                 ),
                 child: Center(child: Text("Enter location manually", style: TextStyle(fontSize: 17, color: primaryLight),)),
               ),
             ),
           ],
         ),
          Column(
            children: [
              Text("we only access your while you are", style: TextStyle(fontSize: 13, color: Colors.grey),),
              Text(" using the app to improve your experience", style: TextStyle(fontSize: 13, color: Colors.grey)),
              SizedBox(height: 25,)
            ],
          ),
        ],
      ),
    );
  }
}
