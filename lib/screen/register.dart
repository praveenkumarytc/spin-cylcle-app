import 'package:flutter/material.dart';
import 'package:service/custome_widgets/app_button.dart';
import 'package:service/screen/home.dart';
import 'package:service/screen/login1.dart';

import 'package:service/utils/image.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController mobilecontroller = TextEditingController();
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
                  height: 310,
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
                          "Create an",
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
                      hintText: "user name",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                    ),
                  ),
                ),
                SizedBox(height: 10),
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
                    Container(
                      height: 47,
                      width: MediaQuery.of(context).size.width * .62,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField(
                        controller: mobilecontroller,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          hintText: "enter your mobile number",
                          hintStyle: TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
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
                      hintText: "enter your email",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                    ),
                  ),
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
                      hintText: "Refer code (optional)",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                    ),
                  ),
                ),
                SizedBox(height: 10),

                SizedBox(height: 20),
                mobilecontroller.text.isNotEmpty
                    ? SizedBox(
                      width: MediaQuery.of(context).size.width * .85,
                      child: Appbutton(
                        textColors: Colors.black,
                        widgetColors: Color(0xff8EC63F),
                        label: "Sign Up",
                        onTap: () {
                          openDialoge();
                          splashScreen();
                        },
                      ),
                    )
                    : SizedBox(
                      width: MediaQuery.of(context).size.width * .85,
                      child: Appbutton(
                        widgetColors: Color(0xffEEFFD7),
                        textColors: Colors.green,
                        label: "Sign Up",
                        onTap: () => null,
                      ),
                    ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already a memeber?", style: TextStyle()),

                    SizedBox(width: 8),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage1()),
                        );
                      },
                      child: Text(
                        "Login here",
                        style: TextStyle(
                          color: Color.fromARGB(255, 108, 168, 25),
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
                Image.asset(Images.groupfooter),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void splashScreen() async {
    await Future.delayed(Duration(seconds: 3), () {
      Navigator.pop(context);
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Home()),
      );
    });
  }

  Future openDialoge() async {
    showDialog(
      context: context,
      builder:
          (context) =>
              Center(child: CircularProgressIndicator(color: Colors.green)),
    );
  }
}
