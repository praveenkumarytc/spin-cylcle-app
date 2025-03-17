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
import 'package:service/screen/schedule_pickup5.dart';
import 'package:service/utils/image.dart';

class SchedulePickup4 extends StatefulWidget {
  const SchedulePickup4({super.key});

  @override
  State<SchedulePickup4> createState() => _SchedulePickup4State();
}

class _SchedulePickup4State extends State<SchedulePickup4> {
  TextEditingController addresscontroller = TextEditingController();
  TextEditingController servicecontroller = TextEditingController();
  TextEditingController buttomsheetaddress = TextEditingController();
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
          title: Text("Schedule Pickup", style: TextStyle(color: Colors.white)),
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
                    // DeliveryTypeIcon(iconname: Image.asset(Images.car)),
                    // DeliveryTypeIcon(iconname: Image.asset(Images.flight)),
                    // DeliveryTypeIcon(iconname: Image.asset(Images.rocket)),
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
                addresscontroller: buttomsheetaddress,
                svgimage: SvgPicture.asset(Images.clothessvg),
                hintname: " Dry clean premium wash",
                changeButton: "Edit service",
              ),
              SizedBox(height: 10),
              AddressWidget(
                addresscontroller: servicecontroller,
                svgimage: SvgPicture.asset(Images.clothessvg),
                hintname: " 17 april 2025",
                changeButton: "Edit Pickup",
              ),

              SizedBox(height: 10),
              ContianerAndTextfield(
                hintTextname: "select your delivery slot",
                imagename: SvgPicture.asset(Images.datesvg),
              ),

              RowPromooCode(
                havePromo: "have promo code?",
                imagename: SvgPicture.asset(Images.threedot),
                apply: "Apply",
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
                  showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20),
                      ),
                    ),
                    isScrollControlled: true,
                    context: context,
                    builder: (BuildContext context) {
                      return DraggableScrollableSheet(
                        maxChildSize: .9,
                        minChildSize: .4,
                        initialChildSize: .7,

                        builder:
                            (_, controller) => Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(20),
                                ),
                                color: Colors.white,
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  FocusScope.of(context).unfocus();
                                },
                                child: ListView(
                                  controller: controller,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xffF7F5FA),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          topRight: Radius.circular(20),
                                        ),
                                      ),
                                      height: 40,
                                      width:
                                          MediaQuery.of(context).size.width *
                                          .90,
                                      child: Center(
                                        child: Text(
                                          "Schedule Delivery Slot",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 300),
                                    // Container(height: 300,
                                    // width: MediaQuery.of(context).size.width*.8,
                                    // child:  Column(children: [ ],),
                                    // ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 20),
                                      child: Text(
                                        "Select a Time",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 20),
                                          child: GestureDetector(
                                            onTap: () => _showdatePicker(),
                                            child: Container(
                                              height: 60,
                                              width:
                                                  MediaQuery.of(
                                                    context,
                                                  ).size.width *
                                                  .25,
                                              decoration: BoxDecoration(
                                                color: Color(0xff8EC63F),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Column(
                                                children: [
                                                  Text(
                                                    "10AM-01PM",
                                                    style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                    ),
                                                  ),
                                                  Text(
                                                    "Availble",
                                                    style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () => _showdatePicker(),
                                          child: Padding(
                                            padding: EdgeInsets.only(left: 20),
                                            child: Container(
                                              height: 60,
                                              width:
                                                  MediaQuery.of(
                                                    context,
                                                  ).size.width *
                                                  .25,
                                              decoration: BoxDecoration(
                                                color: Color(0xffF7F5FA),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Column(
                                                children: [
                                                  Text(
                                                    "6PM-08PM",
                                                    style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                    ),
                                                  ),
                                                  Text(
                                                    "Availble",
                                                    style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () => _showdatePicker(),
                                          child: Padding(
                                            padding: EdgeInsets.only(left: 20),
                                            child: Container(
                                              height: 60,
                                              width:
                                                  MediaQuery.of(
                                                    context,
                                                  ).size.width *
                                                  .25,
                                              decoration: BoxDecoration(
                                                color: Color(0xffF7F5FA),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Column(
                                                children: [
                                                  Text(
                                                    "4PM-05PM",
                                                    style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                    ),
                                                  ),
                                                  Text(
                                                    "Availble",
                                                    style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 20),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 20,
                                      ),
                                      child: Appbutton(
                                        label: "Proceed",
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            (MaterialPageRoute(
                                              builder:
                                                  (context) =>
                                                      SchedulePickup5(),
                                            )),
                                          );
                                        },
                                        widgetColors: Color(0xff8EC63F),
                                        textColors: Colors.black,
                                      ),
                                    ),
                                    //Center(
                                    //   child: ElevatedButton(
                                    //     onPressed: () {
                                    //       Navigator.pop(context);
                                    //     },
                                    //     child: Text("back"),
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ),
                            ),
                      );
                    },
                  );
                },
                child: OrderRequest(yourText: "Place Order Request"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
