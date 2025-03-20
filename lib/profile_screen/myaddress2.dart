import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:service/custome_widgets/app_button.dart';
import 'package:service/profile_screen/savedaddress.dart';
import 'package:service/utils/colors.dart';
import 'package:service/utils/image.dart';

class Myaddress2 extends StatefulWidget {
  const Myaddress2({super.key});

  @override
  State<Myaddress2> createState() => _Myaddress2State();
}

class _Myaddress2State extends State<Myaddress2> {
  FocusNode myaddress2 = FocusNode();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Mycolors.purpleColor,
          title: Text(
            "My address 2",
            style: TextStyle(color: Mycolors.whiteColor),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(Images.mapImage),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * .05,
                ),
                child: Text(
                  "Enter address Details",

                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * .05,
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "House no/ flate no /street no",
                    hintStyle: TextStyle(
                      fontSize: 15,
                      color: Mycolors.greyColor,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * .05,
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Land Mark (optional)",
                    hintStyle: TextStyle(
                      fontSize: 15,
                      color: Mycolors.greyColor,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * .05,
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "How to reach (optional)",
                    hintStyle: TextStyle(
                      fontSize: 15,
                      color: Mycolors.greyColor,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * .05,
                ),
                child: Text(
                  "Save As ",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 18),
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width * .3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 7),
                          Image.asset(Images.home),
                          SizedBox(width: 7),
                          Text("Home"),
                        ],
                      ),
                    ),
                    SizedBox(width: 30),
                    Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width * .3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 7),
                          Image.asset(Images.building),
                          SizedBox(width: 7),
                          Text("office"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(left: 18),
                child: Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width * .3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 7),
                      SvgPicture.asset(Images.locationsvg),
                      SizedBox(width: 7),
                      Text("Others"),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Savedaddress()),
                  );
                },
                child: Center(
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width * .94,
                    color: Mycolors.lightgreenColor,
                    child: Center(
                      child: Text(
                        "Save Address",
                        style: TextStyle(fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
