import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:service/custome_widgets/app_button.dart';
import 'package:service/custome_widgets/full_name_widget.dart';
import 'package:service/profile_screen/edit_profile.dart';
import 'package:service/utils/colors.dart';
import 'package:service/utils/image.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  TextEditingController fullnamecontroller = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController gendercontroller = TextEditingController();
  TextEditingController numbercontroller = TextEditingController();
  TextEditingController emailController = TextEditingController();
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
            "My Profile",
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
              FullNameWidget(
                colorsname: Mycolors.greenColor,
                picture: SvgPicture.asset(Images.profile),
                textfieldcontroller: fullnamecontroller,
                hintname: "enter your name",
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * .5,
                    child: FullNameWidget(
                      colorsname: Mycolors.greenColor,
                      picture: SvgPicture.asset(Images.datesvg),
                      textfieldcontroller: dateController,
                      hintname: "mm-dd-yyyy",
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0),
                      child: FullNameWidget(
                        colorsname: Mycolors.greenColor,
                        picture: SvgPicture.asset(Images.femalesign),
                        textfieldcontroller: gendercontroller,
                        hintname: "female",
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
                        controller: numbercontroller,
                        decoration: InputDecoration(
                          hintText: "9988776655",

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
                padding: EdgeInsets.symmetric(horizontal: 0),
                child: FullNameWidget(
                  colorsname: Mycolors.greenColor,
                  picture: SvgPicture.asset(Images.emailsvg),
                  textfieldcontroller: emailController,
                  hintname: "prachiverma@gmaili.com",
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
              SizedBox(height: 5),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * .57,
                  right: 10,
                ),

                child: Container(
                  height: 35,
                  width: MediaQuery.of(context).size.width * .5,
                  decoration: BoxDecoration(
                    color: Mycolors.greenColor,
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

              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (context) =>
                              EditProfile(namecontroller: fullnamecontroller, dateController: dateController, emailController: emailController, numberController: numbercontroller, genderController: gendercontroller,),
                    ),
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
                      "Edit Profile",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
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

  DropdownMenuItem<String> BuildMenuitems(String item) => DropdownMenuItem(
    value: item,
    child: Text(item, style: TextStyle(color: Mycolors.greenColor)),
  );
}
