import 'package:flutter/material.dart';

import '../signIn_signUp/signin_or_signup.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SplashTimer();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Image.asset("assets/splash.jpg", fit: BoxFit.cover,),
      ),
    );
  }
  Future<void> SplashTimer() async {
    Future.delayed(
      Duration(seconds: 4),
          () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>SignIn_SignUp())),
    );
  }
}
