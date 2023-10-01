import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zomato_clone/provider/foota_item_count.dart';
import 'package:zomato_clone/screens/splash_screen/splash_screen.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) => ZomatoClone(), // Wrap your app
    ),
  );
}

class ZomatoClone extends StatelessWidget {
  const ZomatoClone({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=> ItemCount()),
      ],
      child: MaterialApp(
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        theme: ThemeData(primaryColor: Color(0xfffd3249), fontFamily: 'LexendDeca'),
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}
