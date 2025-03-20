import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:service/custome_widgets/app_button.dart';
import 'package:service/profile_screen/my_profile.dart';
import 'package:service/utils/colors.dart';
import 'package:service/utils/image.dart';

class Savedaddress extends StatefulWidget {
  const Savedaddress({super.key});

  @override
  State<Savedaddress> createState() => _SavedaddressState();
}

class _SavedaddressState extends State<Savedaddress> {
  FocusNode myaddress2 = FocusNode();
  TextEditingController houseAddresController = TextEditingController();
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
                  controller: houseAddresController,
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
              houseAddresController.text.isNotEmpty
                  ? GestureDetector(
                    onTap: () {
                      circularprogress();
                      splashscreen1();
                    },
                    child: Center(
                      child: Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width * .94,
                        color: Mycolors.greenColor,
                        child: Center(
                          child: Text(
                            "Save Address",
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ),
                  )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }

  void splashscreen1() async {
    await Future.delayed(Duration(seconds: 3), () {
      Navigator.pop(context);
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MyProfile()),
      );
    });
  }

  void circularprogress() async {
    showDialog(
      context: context,
      builder:
          (context) => Center(
            child: CircularProgressIndicator(color: Mycolors.greenColor),
          ),
    );
  }
}
