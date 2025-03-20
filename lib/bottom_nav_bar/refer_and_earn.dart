import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:service/utils/colors.dart';
import 'package:service/utils/image.dart';

class ReferAndEarn extends StatefulWidget {
  const ReferAndEarn({super.key});

  @override
  State<ReferAndEarn> createState() => _ReferAndEarnState();
}

class _ReferAndEarnState extends State<ReferAndEarn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mycolors.whiteColor,
      appBar: AppBar(
        backgroundColor: Mycolors.purpleColor,
        title: Text(
          "Refer and Earn",
          style: TextStyle(color: Mycolors.whiteColor),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Center(
              child: Container(
                height: 150,
                width: MediaQuery.of(context).size.width * .8,
                child: Image.asset(Images.refer),
              ),
            ),
            SizedBox(height: 28),
            Text(
              "Invite Friends",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
            ),
            Text(
              "and business",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 30),
            Text("copy your code and share with your friends"),
            SizedBox(height: 30),
            Text(
              "your personal code",
              style: TextStyle(color: Mycolors.greyColor),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  DottedBorder(
                    color: Mycolors.greenColor,
                    strokeWidth: 2,
                    borderType: BorderType.RRect,
                    radius: const Radius.circular(30),
                    dashPattern: [5, 3], // Defines dotted pattern
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width * .89,

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              '224499',
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Clipboard.setData(
                                const ClipboardData(text: '224499'),
                              );
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Copied to clipboard!'),
                                ),
                              );
                            },
                            child: Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Mycolors.greenColor,
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16.0,
                                  vertical: 8.0,
                                ),
                                child: const Text(
                                  'Copy',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text("OR SHARE"),
            SizedBox(height: 20),
            Container(
              height: 240,
              width: MediaQuery.of(context).size.width * 1,
              decoration: BoxDecoration(
                border: Border(top: BorderSide(color: Mycolors.greenColor)),
                color: Mycolors.lightcolor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(18),
                  topRight: Radius.circular(18),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 25),
                    Container(
                      width: MediaQuery.of(context).size.width * .15,
                      height: 6,
                      decoration: BoxDecoration(
                        color: Mycolors.pinkColor,
                        borderRadius: BorderRadius.circular(80),
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Icon(Icons.info, color: Mycolors.greenColor),
                          SizedBox(width: 10),
                          Text(
                            "How Does it works?",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Numbering(
                      number: "1",
                      text1: "Share The Coupon Code With Your Friends Or",
                      text2: "Family Memebers Using The Share Button",
                      text3: " Or The Invite Link",
                    ),
                    SizedBox(height: 20),
                    Numbering(
                      number: "2",
                      text1: "",
                      text2: "They Get 20% On Their First Order ",
                      text3: "",
                    ),
                    SizedBox(height: 20),
                    Numbering(
                      number: "3",
                      text1: "You Get 10% Off Their Order Amount Credit",
                      text2: "To Your Wallet We Have Delivered Their",
                      text3: "Order.",
                    ),
                    SizedBox(height: 20),
                    Numbering(
                      number: "4",
                      text1: "",
                      text2: "Earn Unlimited",
                      text3: " ",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Numbering extends StatelessWidget {
  const Numbering({
    super.key,
    required this.number,
    required this.text1,
    required this.text2,
    required this.text3,
  });
  final String number;
  final String text1;
  final String text2;
  final String text3;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: Row(
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Mycolors.whiteColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withValues(alpha: .5),
                  blurRadius: 1,
                  offset: Offset(1, 2),
                  spreadRadius: .5,
                ),
              ],
            ),
            child: Center(
              child: Text(
                number,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
              ),
            ),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text1,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
              Text(
                text2,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
              Text(
                text3,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
