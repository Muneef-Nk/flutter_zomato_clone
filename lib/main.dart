import 'package:flutter/material.dart';
import 'package:zomato_clone/screens/home_screen/home_screen.dart';
import 'package:zomato_clone/screens/splash_screen/splash_screen.dart';

void main(){
  runApp(ZomatoClone());
}

class ZomatoClone extends StatelessWidget {
  const ZomatoClone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xfffd3249),
        fontFamily: 'LexendDeca'
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

