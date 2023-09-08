import 'package:flutter/material.dart';
import 'package:zomato_clone/screens/home_screen/home_screen.dart';

void main(){
  runApp(ZomatoClone());
}

class ZomatoClone extends StatelessWidget {
  const ZomatoClone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

