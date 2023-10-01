import 'package:flutter/material.dart';
import 'package:zomato_clone/screens/profileScreen/profile_screen.dart';
class Profile extends StatelessWidget {
  const Profile({
    this.size = 20,

  });
  final double size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileScreen()));
      },
      child: CircleAvatar(
        radius: size,
        backgroundImage: AssetImage("assets/icons/profile.jpg",),
      ),
    );
  }
}
