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
import 'package:service/screen/schedule_pickup2.dart';
import 'package:service/utils/image.dart';

class SchedulePickup extends StatefulWidget {
  const SchedulePickup({super.key});

  @override
  State<SchedulePickup> createState() => _SchedulePickupState();
}

class _SchedulePickupState extends State<SchedulePickup> {
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
                hintname: "enter your address",
                changeButton: "Add Address",
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
                                  top: Radius.circular(50),
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
                                    Image.asset(
                                      fit: BoxFit.contain,
                                      Images.mapImage,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 20),
                                      child: Text(
                                        "Enter Your Details",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),

                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 20,
                                      ),
                                      child: TextFormField(
                                        controller: buttomsheetaddress,
                                        decoration: InputDecoration(
                                          hintText:
                                              "House no/flate no/street name",
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 20,
                                      ),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintText: "Landmark (optional)",
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 20,
                                      ),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintText: "How to reach (optional)",
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 20),
                                      child: Text(
                                        "Save As",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: 20,
                                            right: 10,
                                          ),
                                          child: Container(
                                            height: 40,
                                            decoration: BoxDecoration(
                                              border: Border.all(),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            width:
                                                MediaQuery.of(
                                                  context,
                                                ).size.width *
                                                .3,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Image.asset(Images.home),
                                                SizedBox(width: 2),
                                                Text("Home"),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: 20,
                                            right: 10,
                                          ),
                                          child: Container(
                                            height: 40,
                                            decoration: BoxDecoration(
                                              border: Border.all(),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            width:
                                                MediaQuery.of(
                                                  context,
                                                ).size.width *
                                                .3,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Image.asset(Images.building),
                                                SizedBox(width: 2),
                                                Text("Office"),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 20,
                                        right: 253,
                                      ),
                                      child: Container(
                                        height: 40,
                                        width:
                                            MediaQuery.of(context).size.width *
                                            .2,
                                        decoration: BoxDecoration(
                                          border: Border.all(),
                                          borderRadius: BorderRadius.circular(
                                            5,
                                          ),
                                        ),

                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            SvgPicture.asset(
                                              Images.locationsvg,
                                            ),
                                            SizedBox(width: 2),
                                            Text("other"),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    if (buttomsheetaddress.text.isNotEmpty)
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 20,
                                        ),
                                        child: Appbutton(
                                          label: "Save address",
                                          onTap: () {
                                            showModalBottomSheet(
                                              backgroundColor:
                                                  Colors.transparent,
                                              isScrollControlled: true,
                                              context: context,
                                              builder: (BuildContext context) {
                                                return DraggableScrollableSheet(
                                                  maxChildSize: .9,
                                                  minChildSize: .4,
                                                  initialChildSize: .7,

                                                  builder:
                                                      (
                                                        _,
                                                        controller,
                                                      ) => Container(
                                                        color: Colors.white,
                                                        child: ListView(
                                                          controller:
                                                              controller,

                                                          children: [
                                                            Image.asset(
                                                              Images.mapImage,
                                                            ),
                                                            SizedBox(
                                                              height: 10,
                                                            ),
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Padding(
                                                                  padding:
                                                                      EdgeInsets.only(
                                                                        left:
                                                                            20,
                                                                      ),
                                                                  child: Text(
                                                                    "Save Address",
                                                                    style: TextStyle(
                                                                      fontSize:
                                                                          20,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding:
                                                                      EdgeInsets.only(
                                                                        right:
                                                                            20,
                                                                      ),
                                                                  child: GestureDetector(
                                                                    onTap: () {
                                                                      Navigator.push(
                                                                        context,
                                                                        MaterialPageRoute(
                                                                          builder:
                                                                              (
                                                                                context,
                                                                              ) =>
                                                                                  SchedulePickup(),
                                                                        ),
                                                                      );
                                                                    },
                                                                    child: CircleAvatar(
                                                                      backgroundColor:
                                                                          Color(
                                                                            0xff8EC63F,
                                                                          ),
                                                                      child: Icon(
                                                                        Icons
                                                                            .add,
                                                                        color:
                                                                            Colors.white,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),

                                                            GestureDetector(
                                                              onTap: () {
                                                                Navigator.push(
                                                                  context,
                                                                  MaterialPageRoute(
                                                                    builder:
                                                                        (
                                                                          context,
                                                                        ) =>
                                                                            SchedulePickup2(),
                                                                  ),
                                                                );
                                                              },
                                                              child: Card(
                                                                child: ListTile(
                                                                  leading: IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .check_box,
                                                                    ),
                                                                  ),
                                                                  title: Text(
                                                                    "Atiq khan",
                                                                  ),
                                                                  subtitle: Text(
                                                                    "addresses of the client",
                                                                  ),
                                                                  trailing: IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: Icon(
                                                                      Icons
                                                                          .delete,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                );
                                              },
                                            );
                                          },
                                          widgetColors: Color(0xff8EC63F),
                                          textColors: Colors.black,
                                        ),
                                      )
                                    else
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 20,
                                        ),
                                        child: Appbutton(
                                          label: "Save address",
                                          onTap: () {},
                                          widgetColors: Color(0xffEEFFD7),
                                          textColors: Color(0xff8EC63F),
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
                      );
                    },
                  );
                },
                child: OrderRequest(yourText: "Place Your Order"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
