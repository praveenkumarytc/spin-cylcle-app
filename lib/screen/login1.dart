import 'package:flutter/material.dart';
import 'package:service/custome_widgets/app_button.dart';
import 'package:service/screen/register.dart';

import 'package:service/utils/image.dart';

class LoginPage1 extends StatefulWidget {
  const LoginPage1({super.key});

  @override
  State<LoginPage1> createState() => _LoginPage1State();
}

class _LoginPage1State extends State<LoginPage1> {
  TextEditingController mobileOtpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 370,
                  child: Stack(
                    children: [
                      Positioned(
                        right: 0,
                        child: Image.asset(Images.loginimage),
                      ),
                      Positioned(
                        top: 60,
                        left: 30,
                        child: Image.asset(Images.unionimage),
                      ),
                      Positioned(
                        top: 130,
                        left: 30,
                        child: Text(
                          "Welcome",
                          style: TextStyle(
                            color: Color(0xff6E3667),
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Positioned(top: 180, left: 30, child: Text("Guest!")),
                      Positioned(
                        top: 213,
                        left: 30,
                        child: Text(
                          "Login to Your",
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                      Positioned(
                        top: 240,
                        left: 30,
                        child: Text("account", style: TextStyle(fontSize: 25)),
                      ),
                    ],
                  ),
                ),

                Row(
                  children: [
                    SizedBox(width: 30),

                    Container(
                      height: 47,
                      width: MediaQuery.of(context).size.width * .2,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 2),
                          Image.asset(Images.flagindia),

                          Text("+91", style: TextStyle(color: Colors.grey)),

                          Icon(Icons.arrow_downward, color: Colors.grey),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Padding(
                      padding: EdgeInsets.only(right: 18),
                      child: Container(
                        height: 47,
                        width: MediaQuery.of(context).size.width * .62,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextFormField(
                          controller: mobileOtpController,
                          keyboardType: TextInputType.phone,

                          decoration: InputDecoration(
                            focusColor: Colors.green,
                            hintText: "enter your mobile number",
                            hintStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  height: 47,
                  width: MediaQuery.of(context).size.width * .85,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: "OTP",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    SizedBox(width: 30),
                    Text(
                      "Did't recived the code ?",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      " Resend the OTP",
                      style: TextStyle(color: Color(0xff6E3667), fontSize: 14),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * .02),
                    Text(" 12:12", style: TextStyle(color: Colors.grey)),
                  ],
                ),
                SizedBox(height: 50),
                mobileOtpController.text.isNotEmpty
                    ? SizedBox(
                      width: MediaQuery.of(context).size.width * .85,
                      child: Appbutton(
                        widgetColors: Color(0xff8EC63F),
                        textColors: Colors.black,
                        label: "Get Otp",
                        onTap: () => openDialoge(),
                      ),
                    )
                    : SizedBox(
                      width: MediaQuery.of(context).size.width * .85,
                      child: Appbutton(
                        textColors: Colors.green,
                        widgetColors: Color(0xffEEFFD7),
                        label: "verify",
                        onTap: () => openDialoge(),
                      ),
                    ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 30),
                    Text(" Dont't have account?", style: TextStyle()),

                    SizedBox(width: 8),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Register()),
                        );
                      },
                      child: Text(
                        "Register here",
                        style: TextStyle(
                          color: Color.fromARGB(255, 108, 168, 25),
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.width * .157),
                Image.asset(Images.groupfooter),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future openDialoge() => (showDialog(
    context: context,
    builder:
        (context) => AlertDialog(
          title: Center(child: Text("Successfuly Verified")),
          backgroundColor: Colors.white,
          content: Image.asset(Images.verifiedtick),
        ),
  ));
}
