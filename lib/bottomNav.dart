import 'package:flutter/material.dart';
import 'package:zomato_clone/screens/home_screen/home_screen.dart';
import 'package:zomato_clone/utils/constants.dart';
import 'package:zomato_clone/widgets/bottomSelectedContainer.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  List<Widget> screens = [
    HomeScreen(),
    Center(child: Text("1")),
    Center(child: Text("2")),
  ];

  int currentTab = 0;
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = HomeScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      currentScreen = HomeScreen();
                      currentTab = 0;
                    });
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      currentTab == 0 ? bottamSelectedContainer():SizedBox(),
                      Icon(
                        Icons.delivery_dining,
                        color: currentTab == 0 ? primary : Colors.grey,
                      ),
                      Text("Delivery",style: TextStyle(fontSize: 12),),
                      SizedBox(height: 5,)
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      currentScreen = Center(child: Text("1"));
                      currentTab = 1;
                    });
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      currentTab == 1 ? bottamSelectedContainer():SizedBox(),
                      Icon(
                        Icons.receipt_long_outlined,
                        color: currentTab == 1 ? primary : Colors.grey,
                      ),
                      Text("History", style: TextStyle(fontSize: 12)),
                      SizedBox(height: 5,)
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      currentScreen = Center(child: Text("1"));
                      currentTab = 2;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      currentTab == 2 ? bottamSelectedContainer():SizedBox(),
                      Icon(
                        Icons.credit_card_outlined,
                        color: currentTab == 2 ? primary : Colors.grey,
                      ),
                      Text("Money", style: TextStyle(fontSize: 12)),
                      SizedBox(height: 5,)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
