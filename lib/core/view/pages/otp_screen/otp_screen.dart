import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import '../../../utils/color_constants.dart';
import '../location_permision_screen/locaton_permision_screen.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  final pinController = TextEditingController();
  final focusNode = FocusNode();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    pinController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            }),
        title: Text(
          "OTP Verification",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => LocationPermission()));
              },
              child: Text(
                "Skip",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
              ))
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text("We have sent a verification code to "),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "+91 987654432",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 40),
                SizedBox(
                  child: Pinput(
                    length: 6,
                    defaultPinTheme: PinTheme(
                      width: 55,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.grey.shade700.withOpacity(.6),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Didn't get the OTP?"),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Resend SMS",
                          style: TextStyle(color: primary),
                        )),
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Try more options",
                    style: TextStyle(color: primary),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      "Go back to login methods",
                      style: TextStyle(color: primary),
                    )),
                SizedBox(
                  height: 40,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
