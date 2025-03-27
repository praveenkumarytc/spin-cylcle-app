import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:service/custome_widgets/dottedline.dart';
import 'package:service/custome_widgets/location_details.dart';
import 'package:service/custome_widgets/stars_icons.dart';
import 'package:service/custome_widgets/submit_buttons.dart';
import 'package:service/utils/colors.dart';

class OrderSummery4 extends StatefulWidget {
  const OrderSummery4({super.key});

  @override
  State<OrderSummery4> createState() => _OrderSummery4State();
}

class _OrderSummery4State extends State<OrderSummery4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mycolors.whiteColor,
      appBar: AppBar(
        toolbarHeight: 90,
        actionsPadding: EdgeInsets.only(top: 300),
        backgroundColor: Mycolors.purpleColor,
        automaticallyImplyLeading: false,
        title: CustomAppBar(),
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: 20),
                Container(
                  padding: EdgeInsets.all(4),
                  height: 30,
                  decoration: BoxDecoration(
                    color: Mycolors.greenColor,
                    border: Border.all(),
                  ),
                  child: Text("Order summery"),
                ),
                SizedBox(width: 20),
                Container(
                  height: 30,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 2, color: Mycolors.greenColor),
                    ),
                  ),
                  child: Text("Feedback"),
                ),
                SizedBox(width: 20),
                Container(
                  height: 30,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 2, color: Mycolors.greenColor),
                    ),
                  ),
                  child: Text("Reprocess"),
                ),
                SizedBox(width: 20),
                Container(
                  height: 30,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 2, color: Mycolors.greenColor),
                    ),
                  ),
                  child: Text("Order Service Rating"),
                ),
                SizedBox(width: 20),
              ],
            ),
          ),
          SizedBox(height: 15),
          LocationDetails(),

          SizedBox(height: 70),
          DottedLine(),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.only(
              right: MediaQuery.of(context).size.width * .75,
            ),
            child: Rating(),
          ),
          Padding(
            padding: EdgeInsets.only(
              right: MediaQuery.of(context).size.width * .28,
            ),
            child: Feedbackname(feedbackname: "Rate your pickup experience"),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 25), child: StarsIcons()),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * .3,
                ),
                child: SubmitButton(
                  colorname: Mycolors.lightgreenColor,
                  buttonname: "submit",
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          DottedLine(),
          Padding(
            padding: EdgeInsets.only(
              right: MediaQuery.of(context).size.width * .75,
            ),
            child: Rating(),
          ),
          Padding(
            padding: EdgeInsets.only(
              right: MediaQuery.of(context).size.width * .28,
            ),
            child: Feedbackname(feedbackname: "Rate your Delivery experience"),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 25), child: StarsIcons()),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * .3,
                ),
                child: SubmitButton(
                  colorname: Mycolors.lightgreenColor,
                  buttonname: "submit",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "#000475",
              style: TextStyle(
                fontSize: 15,
                color: Mycolors.whiteColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "Items",
              style: TextStyle(
                fontSize: 15,
                color: Mycolors.whiteColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "Paid",
              style: TextStyle(
                fontSize: 15,
                color: Mycolors.whiteColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Completed",
              style: TextStyle(
                fontSize: 18,
                color: Mycolors.whiteColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "15",
              style: TextStyle(
                fontSize: 18,
                color: Mycolors.whiteColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "RS 200.00",
              style: TextStyle(
                fontSize: 18,
                color: Mycolors.whiteColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
