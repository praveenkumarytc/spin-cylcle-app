import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:service/custome_widgets/dottedline.dart';
import 'package:service/custome_widgets/location_details.dart';
import 'package:service/custome_widgets/stars_icons.dart';
import 'package:service/custome_widgets/submit_buttons.dart';
import 'package:service/profile_screen/order_summery2.dart';
import 'package:service/profile_screen/order_summery3.dart';
import 'package:service/profile_screen/order_summery4.dart';
import 'package:service/utils/colors.dart';
import 'package:service/utils/image.dart';

class OrderSummery extends StatefulWidget {
  const OrderSummery({super.key});

  @override
  State<OrderSummery> createState() => _OrderSummeryState();
}

class _OrderSummeryState extends State<OrderSummery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mycolors.whiteColor,
      appBar: AppBar(
        backgroundColor: Mycolors.purpleColor,
        title: Text(
          "Order summery",
          style: TextStyle(color: Mycolors.whiteColor),
        ),
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap:
                      () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OrderSummery2(),
                        ),
                      ),
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "Order summery",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap:
                      () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OrderSummery2(),
                        ),
                      ),
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "Feedback",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap:
                      () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OrderSummery3(),
                        ),
                      ),
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "Reprocess",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap:
                      () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OrderSummery4(),
                        ),
                      ),
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "OrderService Rating",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Container(
            height: 90,
            width: MediaQuery.of(context).size.width * .85,
            color: Mycolors.lightgreyColor,
            child: Column(
              children: [
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "items",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "Paid",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "#00475",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "items",
                      style: TextStyle(
                        color: Mycolors.greyColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "Paid",
                      style: TextStyle(
                        color: Mycolors.greyColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Container(
                      height: 35,
                      width: MediaQuery.of(context).size.width * .20,
                      color: Mycolors.lightgreenColor,
                      child: Center(
                        child: Text(
                          "Completed",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Mycolors.greenColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 30),

          // address and pickup
          LocationDetails(),
          SizedBox(height: 30),
          DottedLine(),
          Row(
            children: [
              Rating(),
              Spacer(),
              Icon(Icons.star, color: Mycolors.yellowcolors),
              SizedBox(width: 10),
              Icon(Icons.star, color: Mycolors.yellowcolors),
              SizedBox(width: 10),
              Icon(Icons.star, color: Mycolors.yellowcolors),
              SizedBox(width: 10),
              Icon(Icons.star, color: Mycolors.starscolor),
              SizedBox(width: 10),
              Icon(Icons.star, color: Mycolors.starscolor),
              SizedBox(width: 10),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * .1,
                ),
                child: Feedbackname(feedbackname: "Rate Delivery experience"),
              ),
              SizedBox(width: 10),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * .001,
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OrderSummery2()),
                    );
                  },
                  child: SubmitButton(
                    colorname: Mycolors.greenColor,
                    buttonname: "submite",
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 10),

          SizedBox(height: 20),
          DottedLine(),
          SizedBox(height: 10),
          Row(
            children: [
              Rating(),
              Spacer(),
              Icon(Icons.star, color: Mycolors.yellowcolors),
              SizedBox(width: 10),
              Icon(Icons.star, color: Mycolors.yellowcolors),
              SizedBox(width: 10),
              Icon(Icons.star, color: Mycolors.yellowcolors),
              SizedBox(width: 10),
              Icon(Icons.star, color: Mycolors.starscolor),
              SizedBox(width: 10),
              Icon(Icons.star, color: Mycolors.starscolor),
              SizedBox(width: 10),
            ],
          ),
          SizedBox(height: 10),
          // custome widget name Stars icons
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * .1,
                ),
                child: Feedbackname(feedbackname: "Rate Delivery experience"),
              ),
              SizedBox(width: 10),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * .001,
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OrderSummery2()),
                    );
                  },
                  child: SubmitButton(
                    colorname: Mycolors.greenColor,
                    buttonname: "submite",
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
