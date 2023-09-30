import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:zomato_clone/screens/select_country/select_country.dart';
import 'package:zomato_clone/screens/signIn_signUp/widgets/social_container.dart';

import '../../utils/constants.dart';
import '../../widgets/social_container.dart';
import '../location_perlmision/locaton_permision.dart';
import '../otp_screen/otp_screen.dart';

class SignIn_SignUp extends StatefulWidget {
  @override
  State<SignIn_SignUp> createState() => _SignIn_SignUpState();
}

class _SignIn_SignUpState extends State<SignIn_SignUp> {
  TextEditingController _numberController = TextEditingController();
  final _numberKey = GlobalKey<FormFieldState>();

  @override
  void dispose() {
    _numberController.dispose();
    super.dispose();
  }

  int _languageValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.40,
                child: Image.network(
                  "https://img.freepik.com/premium-photo/burger-chips-hamburger-french-fries-red-paper-box-fast-food-red-background_157927-7562.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                  top: 100,
                  right: 0,
                  left: 0,
                  child: Center(
                      child: Text(
                    "zomato",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 45,
                        color: Colors.white,
                        fontFamily: 'zomato'),
                  ))),
              Positioned(
                top: 40,
                left: 20,
                child: InkWell(
                  onTap: () {
                    showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        context: context,
                        builder: (context) {
                          return SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.black.withOpacity(0.6),
                                  ),
                                  child: IconButton(
                                    color: Colors.white,
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    icon: Icon(Icons.close),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          topRight: Radius.circular(20))),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, top: 20),
                                    child: Text(
                                      "Select Language",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 400,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  child: ListView(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.all(10),
                                        height: 95,
                                        decoration: BoxDecoration(
                                            color: Color(0xfff3f4f8),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Center(
                                          child: RadioListTile(
                                            value: 1,
                                            groupValue: _languageValue,
                                            title: Text("English"),
                                            onChanged: (value) {
                                              setState(() {
                                                _languageValue = value!;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Ink(
                                    padding: EdgeInsets.only(
                                        left: 15,
                                        right: 15,
                                        top: 2,
                                        bottom: 15),
                                    width: double.infinity,
                                    height: 80,
                                    color: Colors.white,
                                    child: Container(
                                      width: 40,
                                      height: 20,
                                      decoration: BoxDecoration(
                                          color: primary,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Center(
                                          child: Text(
                                        "Select",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      )),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          );
                        });
                  },
                  child: BlurryContainer(
                    color: Colors.white.withOpacity(0.19),
                    blur: 8,
                    width: 70,
                    height: 35,
                    child: Center(
                        child: Icon(
                      Icons.translate,
                      color: Colors.white,
                      size: 17,
                    )),
                  ),
                ),
              ),
              Positioned(
                top: 40,
                right: 20,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => LocationPermission()));
                  },
                  child: BlurryContainer(
                    color: Colors.white.withOpacity(0.19),
                    blur: 8,
                    width: 70,
                    height: 35,
                    child: Center(
                        child: Text(
                      'skip',
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                ),
              )
            ],
          ),
          // SizedBox(height: 20,),
          Container(
            height: MediaQuery.of(context).size.height * 0.6,
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "India's  #1 Food Delivery\n        and Dining App",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'LexendDeca'),
                ),
                SizedBox(
                  height: 20,
                ),
                // DividerCenterText(text: "Log in or sign up",),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SelectCountry()));
                      },
                      child: Container(
                        width: 60,
                        height: 50,
                        // color: Colors.red,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1, color: Colors.grey.withOpacity(.5)),
                            borderRadius: BorderRadius.circular(10)),
                        child: Icon(Icons.arrow_drop_down),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(5),
                        width: 60,
                        height: 50,
                        // color: Colors.red,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1, color: Colors.grey.withOpacity(.5)),
                            borderRadius: BorderRadius.circular(10)),
                        child: Form(
                          child: TextFormField(
                            key: _numberKey,
                            controller: _numberController,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              //errorText: _validate ? "Value Can't Be Empty" : null,
                              border: InputBorder.none,
                              prefixIcon: Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, left: 10),
                                child: Text("+91"),
                              ),
                              hintText: "Enter Phone Number",
                              hintStyle: TextStyle(color: Colors.grey),
                              prefixIconColor: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => OTPScreen()));
                    // if (_numberKey.currentState!.validate()) {
                    //   // Scaffold.of(context).showSnackBar()
                    //   print('not valid');
                    // }
                  },
                  child: Container(
                    width: double.infinity,
                    height: 55,
                    decoration: BoxDecoration(
                        color: Color(0xfffd3249),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Text(
                      "Continue",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    )),
                  ),
                ),
                // DividerCenterText(text: "or"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialContainer(
                        onPressed: () {
                          print('clicked');
                        },
                        icon: "assets/icons/google.png"),
                    SizedBox(
                      width: 40,
                    ),
                    SocialContainer(
                      onPressed: () {
                        showModalBottomSheet(
                          backgroundColor: Colors.transparent,
                          context: context,
                          builder: (context) {
                            return Container(
                              height: 250,
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        print("clicked");
                                        Navigator.of(context).pop();
                                      },
                                      child: Container(
                                        width: 50,
                                        height: 50,
                                        decoration: BoxDecoration(
                                            color:
                                                Colors.black.withOpacity(0.8),
                                            shape: BoxShape.circle),
                                        child: Icon(
                                          Icons.close,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height: 180,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(20),
                                              topRight: Radius.circular(20))),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          socialContainerBSheet(
                                              context: context,
                                              icon: "assets/icons/facebook.png",
                                              text: "Continue with Facebook"),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          socialContainerBSheet(
                                              context: context,
                                              icon: "assets/icons/email.png",
                                              text: "Continue with Email")
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                      icon: "assets/icons/MenuHori.png",
                    ),
                  ],
                ),
                Center(
                  child: Text(
                    "               By continuing you agree to our \n Terms of Service Privacy Policy Content Policy",
                    style: TextStyle(
                        fontSize: 10, color: Colors.grey[700], height: 1.5),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
