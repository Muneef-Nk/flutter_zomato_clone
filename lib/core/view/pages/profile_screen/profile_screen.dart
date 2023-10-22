import 'package:flutter/material.dart';

import '../../../model/profile_model.dart';
import '../../../utils/color_constants.dart';
import '../../shared/widgets/profile.dart';
import '../signin_signup_screen/signin_or_signup_screen.dart';
import 'widgets/profile_small_container.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(.9),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey.withOpacity(.1),
        leading: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: 100,
            margin: EdgeInsets.only(bottom: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              // boxShadow: [
              //   BoxShadow(
              //     color: Colors.grey.shade300,
              //     spreadRadius: 1,
              //     blurRadius: 1
              //   )
              // ]
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Profile(
                  size: 35,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Muneef",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Text("Muneef@gmail.com"),
                    Row(
                      children: [
                        Text(
                          "View activity",
                          style: TextStyle(fontSize: 12, color: primary),
                        ),
                        Icon(
                          Icons.arrow_right,
                          color: primary,
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ProfileSmallContainer(
                text: "Like",
                icon: Icons.favorite_outline,
              ),
              ProfileSmallContainer(
                text: "Payment",
                icon: Icons.payment,
              ),
              ProfileSmallContainer(
                text: "Settings",
                icon: Icons.settings,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: ListTile(
              leading: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.grey[300]),
                child: Icon(
                  Icons.person,
                  size: 15,
                ),
              ),
              title: Text("Your Profile"),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 18,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            height: 55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: ListTile(
              leading: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.grey[200]),
                child: Icon(
                  Icons.star_outline,
                  size: 15,
                ),
              ),
              title: Text("Your Rating"),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 18,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            // height: 500,
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                // boxShadow: [
                //   BoxShadow(
                //     color: Colors.grey.shade300,
                //     blurRadius: 1,
                //     spreadRadius: 1
                //   )
                // ],
                color: Colors.white),
            child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: profileModel.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        leading: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.grey[200]),
                          child: Icon(
                            profileModel[index].icon,
                            size: 15,
                          ),
                        ),
                        title: Text(profileModel[index].label),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                          color: Colors.black,
                        ),
                      ),
                      Divider()
                    ],
                  );
                }),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => SignIn_SignUp()),
                  (route) => false);
            },
            child: Container(
              height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: ListTile(
                leading: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.grey[300]),
                  child: Icon(
                    Icons.power_settings_new,
                    size: 15,
                  ),
                ),
                title: Text("Log out"),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
