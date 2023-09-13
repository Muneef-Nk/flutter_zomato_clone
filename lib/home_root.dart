import 'package:flutter/material.dart';
import 'package:zomato_clone/screens/home_screen/home_screen.dart';
import 'package:zomato_clone/utils/constants.dart';

class HomeRoot extends StatefulWidget {
  const HomeRoot({super.key});

  @override
  State<HomeRoot> createState() => _HomeRootState();
}

class _HomeRootState extends State<HomeRoot> {
  List<Widget> pages=[
    HomeScreen(),
    Center(child: Text("1")),
    Center(child: Text("2")),
  ];

  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: primary,

        selectedLabelStyle: TextStyle(
          color: Colors.black
        ),
        currentIndex: currentIndex,
        onTap: (index){
          setState(() {
            currentIndex=index;
            print(index.toString());
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.delivery_dining),
            label: "Delivery",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: "History"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet),
              label: "Money"
          ),
        ],
      ),
      body: pages[currentIndex],
    );
  }
}
