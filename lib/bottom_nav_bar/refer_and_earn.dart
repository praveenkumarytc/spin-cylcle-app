import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
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
      body: Column(
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
          DottedBorder(child: Text("atiq khan")),
        ],
      ),
    );
  }
}
