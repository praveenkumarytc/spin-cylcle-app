import 'dart:async';

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
import 'package:service/utils/image.dart';

class SchedulePickup2 extends StatefulWidget {
  const SchedulePickup2({super.key});

  @override
  State<SchedulePickup2> createState() => _SchedulePickup2State();
}

class _SchedulePickup2State extends State<SchedulePickup2> {
  TextEditingController addresscontroller = TextEditingController();
  TextEditingController servicecontroller = TextEditingController();
  TextEditingController buttomsheetaddress = TextEditingController();

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
              ),

              SizedBox(height: 10),
              // this widget is  used for service type like pickup and drop slot
              ContianerAndTextfield(
                hintTextname: "select your service",
                imagename: SvgPicture.asset(Images.clothessvg),
              ),
              SizedBox(height: 10),
              ContianerAndTextfield(
                hintTextname: "select your pickup slot",
                imagename: SvgPicture.asset(Images.datesvg),
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
                                child: Expanded(
                                  child: ListView(
                                    children: [
                                      Center(child: Text("Select Service")),
                                      SizedBox(height: 10),
                                      RowService(),
                                      SizedBox(height: 10),
                                      RowService(),
                                      SizedBox(height: 10),
                                      RowService(),
                                      SizedBox(height: 10),

                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 20,
                                        ),
                                        child: Appbutton(
                                          label: "Confirm",
                                          onTap: () {},
                                          widgetColors: Color(0xff8EC63F),
                                          textColors: Colors.black,
                                        ),
                                      ),
                                      Center(
                                        child: ElevatedButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text("back"),
                                        ),
                                      ),
                                    ],
                                  ),
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
