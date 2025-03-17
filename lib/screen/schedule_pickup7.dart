import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:service/custome_widgets/address_widget.dart';
import 'package:service/custome_widgets/app_button.dart';
import 'package:service/custome_widgets/contianer_and_textfield.dart';
import 'package:service/custome_widgets/delivery_type_icon.dart';
import 'package:service/custome_widgets/order_request.dart';
import 'package:service/custome_widgets/remark.dart';
import 'package:service/custome_widgets/row_promoo_code.dart';
import 'package:service/custome_widgets/row_service.dart';
import 'package:service/custome_widgets/service_text_row.dart';
import 'package:service/utils/image.dart';

class SchedulePickup7 extends StatefulWidget {
  const SchedulePickup7({super.key});

  @override
  State<SchedulePickup7> createState() => _SchedulePickup7State();
}

class _SchedulePickup7State extends State<SchedulePickup7> {
  TextEditingController addresscontroller = TextEditingController();
  TextEditingController servicecontroller = TextEditingController();
  TextEditingController buttomsheetaddress = TextEditingController();
  TextEditingController pickupcontroller = TextEditingController();

  void _showdatePicker() {
    showDatePicker(
      context: context,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
      initialDate: DateTime.now(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 161, 52, 134),
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text(
            "Schedule Pickup7",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 24, bottom: 16),
                child: Center(
                  child: Text(
                    "Select Your Delivrey Type",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DeliveryTypeIcon(iconname: Image.asset(Images.car)),
                    DeliveryTypeIcon(iconname: Image.asset(Images.flight)),
                    DeliveryTypeIcon(iconname: Image.asset(Images.rocket)),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Normal", style: TextStyle(fontSize: 15)),
                  Text("Express", style: TextStyle(fontSize: 15)),
                  Text("Express", style: TextStyle(fontSize: 15)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("               ", style: TextStyle(fontSize: 14)),
                  Text("(two days)", style: TextStyle(fontSize: 14)),
                  Text("(Next day)", style: TextStyle(fontSize: 14)),
                ],
              ),
              // this widget is for the address type and widget name is Addresswidget
              AddressWidget(
                addresscontroller: addresscontroller,
                svgimage: SvgPicture.asset(Images.locationsvg),
                hintname: "Lucknow inventic",
                changeButton: "Edit Address",
              ),

              SizedBox(height: 10),
              // this widget is  used for service type like pickup and drop slot
              AddressWidget(
                addresscontroller: servicecontroller,
                svgimage: SvgPicture.asset(Images.clothessvg),
                hintname: " Dry clean premium wash",
                changeButton: "Edit service",
              ),
              SizedBox(height: 10),
              AddressWidget(
                addresscontroller: pickupcontroller,
                svgimage: SvgPicture.asset(Images.clothessvg),
                hintname: " 17 april 2025",
                changeButton: "Edit Pickup",
              ),

              SizedBox(height: 10),
              AddressWidget(
                addresscontroller: buttomsheetaddress,
                svgimage: SvgPicture.asset(Images.clothessvg),
                hintname: " 19 april 2025",
                changeButton: "Edit Delivery",
              ),

              RowPromooCode(
                havePromo: "SP91NT21P1",
                imagename: SvgPicture.asset(Images.threedot),
                apply: "Remove",
              ),
              SizedBox(height: 10),
              Remarkeidget(
                enterRmark: "remark",
                imagename: SvgPicture.asset(Images.pencil),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.check_box, color: Colors.green),
                    ),
                    Text(
                      "I agree to ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      "Term and conditions",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "*Min Order value 400 exclude GST.",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
              ),

              GestureDetector(
                onTap: () {
                  openDialoge();
                  splashScreen();
                },
                child: OrderRequest(yourText: "Place Order Request"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void splashScreen() async {
    await Future.delayed(Duration(seconds: 4), () {
      Navigator.pop(context);
      addresscontroller.text.isNotEmpty ? openCoupen() : invalidCoupon();
    });
  }

  Future openDialoge() => (showDialog(
    context: context,
    builder:
        (context) =>
            Center(child: CircularProgressIndicator(color: Colors.green)),
  ));
  Future openCoupen() => (showDialog(
    context: context,
    builder:
        (context) => AlertDialog(
          content: Container(
            height: 230,
            width: MediaQuery.of(context).size.width * .8,
            color: Colors.transparent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.check_box_rounded,
                  color: Color(0xff8EC63F),
                  size: 80,
                ),
                Center(
                  child: Text(
                    "ORDER ID ",
                    style: TextStyle(fontWeight: FontWeight.w300, fontSize: 18),
                  ),
                ),
                Center(
                  child: Text(
                    "#0887434456989",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 22),
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: Text(
                    "your order placed successfuly",
                    style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
                  ),
                ),
                Center(
                  child: Text(
                    "Thank you for choosing spine cycle ",
                    style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
                  ),
                ),
              ],
            ),
          ),
        ),
  ));
  Future invalidCoupon() => (showDialog(
    context: context,
    builder:
        (context) => AlertDialog(
          content: Container(
            height: 230,
            width: MediaQuery.of(context).size.width * .8,
            color: Colors.transparent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.error_outline, color: Color(0xffFF0000), size: 80),
                Center(
                  child: Text(
                    "Invalid coupon ",
                    style: TextStyle(fontWeight: FontWeight.w300, fontSize: 18),
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: Text(
                    "invalid Couponn code ",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                  ),
                ),

                Center(
                  child: Text(
                    "Please try again",
                    style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
                  ),
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 35,
                    width: MediaQuery.of(context).size.width * .2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff8EC63F),
                    ),
                    child: Center(child: Text("Retry")),
                  ),
                ),
              ],
            ),
          ),
        ),
  ));
}
