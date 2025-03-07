import 'package:flutter/material.dart';
import 'package:service/screen/register.dart';

import 'package:service/utils/image.dart';

class LoginPage1 extends StatefulWidget {
  const LoginPage1({super.key});

  @override
  State<LoginPage1> createState() => _LoginPage1State();
}

class _LoginPage1State extends State<LoginPage1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          body: Stack(
            children: [
              Positioned(right: 0, child: Image.asset(Images.loginimage)),
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
                child: Text("Login to Your", style: TextStyle(fontSize: 25)),
              ),
              Positioned(
                top: 240,
                left: 30,
                child: Text("account", style: TextStyle(fontSize: 25)),
              ),
              Positioned(
                top: 350,
                left: 30,
                child: Row(
                  children: [
                    Container(
                      height: 47,
                      width: MediaQuery.of(context).size.width * .2,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 4),
                          Image.asset(Images.flagindia),
                          SizedBox(width: 4),
                          Text("+91", style: TextStyle(color: Colors.grey)),
                          SizedBox(width: 2),
                          Icon(Icons.arrow_downward, color: Colors.grey),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 350,
                left: 120,
                child: Container(
                  height: 47,
                  width: MediaQuery.of(context).size.width * .62,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: "enter your mobile number",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                    ),
                  ),
                ),
              ),

              Positioned(
                top: 410,
                left: 30,
                child: Container(
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
              ),

              Positioned(
                top: 460,
                left: 30,
                child: Row(
                  children: [
                    Text(
                      "Did't recived the code ?",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      " Resend the OTP",
                      style: TextStyle(color: Color(0xff6E3667), fontSize: 14),
                    ),
                    SizedBox(width: 35),
                    Text(" 12:12", style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ),

              Positioned(
                top: 550,
                left: 30,
                right: 30,
                child: GestureDetector(
                  onTap: () {
                    openDialoge();
                  },
                  child: Container(
                    height: 45,
                    width: MediaQuery.of(context).size.width * .9,
                    decoration: BoxDecoration(
                      color: Color(0xffEEFFD7),

                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "Verify",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 108, 168, 25),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 630,
                left: MediaQuery.of(context).size.width * .2,
                child: Row(
                  children: [
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
              ),
              Positioned(
                top: 645,

                child: Image.asset(fit: BoxFit.fill, Images.groupfooter),
              ),
            ],
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
