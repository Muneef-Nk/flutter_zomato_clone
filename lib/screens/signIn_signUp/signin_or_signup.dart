import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:zomato_clone/screens/select_country/select_country.dart';

import '../../widgets/show_language_bottom_sheet.dart';
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
                    showModalBottomSheetLanguage(context);
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
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LocationPermission()));
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
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> OTPScreen()));
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
                                          color: Colors.black.withOpacity(0.8),
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



  Widget socialContainerBSheet(
      {required BuildContext context,
      required String icon,
      required String text}) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.85,
      height: 50,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(icon),
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            text,
            style: TextStyle(color: Colors.grey[700]),
          )
        ],
      ),
    );
  }
}
