import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:service/custome_widgets/address_widget.dart';
import 'package:service/custome_widgets/app_button.dart';
import 'package:service/profile_screen/edit_profile.dart';
import 'package:service/profile_screen/my_address.dart';
import 'package:service/utils/colors.dart';
import 'package:service/utils/image.dart';

class EditProfile extends StatefulWidget {
  EditProfile({
    super.key,
    required this.namecontroller,
    required this.dateController,
    required this.emailController,
    required this.numberController,
    required this.genderController,
  });
  TextEditingController namecontroller;
  TextEditingController dateController;
  TextEditingController genderController;
  TextEditingController numberController;
  TextEditingController emailController;
  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController fulladdresscontroller = TextEditingController();
  String? value;
  final item = ['female', 'male'];
  FocusNode myprofilefocusNode = FocusNode();
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
            "My Profile 2",
            style: TextStyle(color: Mycolors.whiteColor),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(height: 30),
              Center(
                child: Container(
                  height: 90,
                  width: MediaQuery.of(context).size.width * .25,
                  decoration: BoxDecoration(
                    color: Mycolors.greenColor,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Image.asset(
                      fit: BoxFit.fill,
                      // height: double.infinity,
                      // width: double.infinity,
                      Images.profileimage,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20),
              Center(
                child: Text(
                  "Prachi Verma",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
              ),
              Center(
                child: Text(
                  "8707466384",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Mycolors.greyColor,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                  controller: widget.namecontroller,
                  decoration: InputDecoration(
                    label: Text("full name"),
                    hintText: "prachi verma",
                    prefixIcon: Container(
                      padding: EdgeInsets.all(10),
                      child: SvgPicture.asset(Images.profile),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Mycolors.greenColor,
                        width: 2,
                      ),
                    ),

                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: TextFormField(
                        controller: widget.dateController,
                        decoration: InputDecoration(
                          label: Text("Date of Birth"),
                          hintText: "14-8-2024",
                          prefixIcon: Container(
                            padding: EdgeInsets.all(10),
                            child: SvgPicture.asset(Images.datesvg),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Mycolors.greenColor,
                              width: 2,
                            ),
                          ),

                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: TextFormField(
                        controller: widget.genderController,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.keyboard_arrow_down_rounded),
                          ),
                          label: Text("Gender"),
                          hintText: "female",
                          prefixIcon: Container(
                            padding: EdgeInsets.all(12),
                            child: SvgPicture.asset(Images.femalesign),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Mycolors.greenColor,
                              width: 2,
                            ),
                          ),

                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * .3,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: TextFormField(
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.keyboard_arrow_down_rounded),
                          ),

                          prefixIcon: Container(
                            padding: EdgeInsets.all(12),
                            child: Image.asset(Images.flagindia),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Mycolors.greenColor,
                              width: 2,
                            ),
                          ),

                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),

                  Container(
                    width: MediaQuery.of(context).size.width * .7,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: TextFormField(
                        controller: widget.numberController,
                        decoration: InputDecoration(
                          hintText: "9988776655",
                          label: Text("Mobile no"),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Mycolors.greenColor,
                              width: 2,
                            ),
                          ),

                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                  controller: widget.emailController,
                  decoration: InputDecoration(
                    hintText: "prachiverma@gmail.com",
                    label: Text("email"),
                    prefixIcon: Container(
                      padding: EdgeInsets.all(10),
                      child: SvgPicture.asset(Images.emailsvg),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Mycolors.greenColor,
                        width: 2,
                      ),
                    ),

                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Location",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Container(
                      height: 30,
                      width: MediaQuery.of(context).size.width * .3,
                      decoration: BoxDecoration(
                        color: Mycolors.lightgreyColor,
                        borderRadius: BorderRadius.circular(10),
                      ),

                      child: Center(child: Text("Default Address")),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Container(
                height: 90,
                width: MediaQuery.of(context).size.width * .95,
                decoration: BoxDecoration(border: Border.all()),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10, top: 5),
                      child: SvgPicture.asset(Images.locationsvg),
                    ),
                    SizedBox(width: 15),
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text(
                        "Kursi raod Integral Iniversity Lucknow  india ",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * .57,
                  right: 10,
                ),

                child: Container(
                  height: 35,
                  width: MediaQuery.of(context).size.width * .5,
                  decoration: BoxDecoration(
                    color: Mycolors.lightgreenColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Center(
                        child: Text(
                          "Manage my Address",
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                      SizedBox(width: 1),
                      Icon(Icons.arrow_forward_rounded),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              // Appbutton(
              //   label: "Edit Profile",
              //   onTap: () {},
              //   widgetColors: Color(0xff8EC63F),
              //   textColors: Colors.black,
              // ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyAddress()),
                  );
                },
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width * .8,
                  decoration: BoxDecoration(
                    color: Mycolors.greenColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "Save and Update",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  DropdownMenuItem<String> BuildMenuitems(String item) => DropdownMenuItem(
    value: item,
    child: Text(item, style: TextStyle(color: Mycolors.greenColor)),
  );
}
