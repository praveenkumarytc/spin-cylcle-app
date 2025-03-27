import 'package:flutter/material.dart';
import 'package:service/custome_widgets/dottedline.dart';
import 'package:service/custome_widgets/location_details.dart';
import 'package:service/custome_widgets/stars_icons.dart';
import 'package:service/custome_widgets/submit_buttons.dart';
import 'package:service/profile_screen/order_summery.dart';
import 'package:service/profile_screen/order_summery3.dart';
import 'package:service/utils/colors.dart';
import 'package:service/utils/image.dart';

class OrderSummery2 extends StatefulWidget {
  const OrderSummery2({super.key});

  @override
  State<OrderSummery2> createState() => _OrderSummery2State();
}

class _OrderSummery2State extends State<OrderSummery2> {
  @override
  Widget build(BuildContext context) {
    bool clicke = false;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 90,
          actionsPadding: EdgeInsets.only(top: 300),
          backgroundColor: Mycolors.purpleColor,
          automaticallyImplyLeading: false,
          title: Column(
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
          ),
        ),
        body: Column(
          children: [
            Container(
              height: 400,
              width: MediaQuery.of(context).size.width * 1,
              decoration: BoxDecoration(
                color: Mycolors.pinkColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            changecolor();
                            // Navigator.pushReplacement(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => OrderSummery(),
                            //   ),
                            // );
                          },
                          child: OrdersummeryContainer(
                            containername: "order summery",
                            colorname: ontapcolor,
                            imagename: Images.ordersummery,
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
                          child: OrdersummeryContainer(
                            containername: "FeedBack",
                            colorname: Mycolors.whiteColor,
                            imagename: Images.feedback,
                          ),
                        ),
                        OrdersummeryContainer(
                          containername: "Reprocess",
                          colorname: Mycolors.whiteColor,
                          imagename: Images.reprocess,
                        ),
                        OrdersummeryContainer(
                          containername: "Order Service Rating",
                          colorname: Mycolors.whiteColor,
                          imagename: Images.feedback,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  LocationDetails(),
                ],
              ),
            ),
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
                Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: StarsIcons(),
                ),
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
            SizedBox(height: 10),
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
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: StarsIcons(),
                ),
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
      ),
    );
  }

  Color ontapcolor = Mycolors.whiteColor;
  void changecolor() {
    setState(() {
      ontapcolor =
          ontapcolor == ontapcolor ? Color(0xfFFFFF80) : Mycolors.purpleColor;
    });
  }

  int selectedIndex = 0;
  Widget _buildTabItem(int index, String title, Widget targetScreen) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => targetScreen),
        );
      },
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
          decoration: BoxDecoration(
            color:
                selectedIndex == index
                    ? Mycolors.purpleColor
                    : Colors.transparent,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: selectedIndex == index ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}

class OrdersummeryContainer extends StatelessWidget {
  const OrdersummeryContainer({
    super.key,
    required this.containername,
    required this.colorname,
    required this.imagename,
  });
  final String containername;
  final Color colorname;
  final String imagename;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        padding: EdgeInsets.all(5),
        height: 35,

        decoration: BoxDecoration(
          color: colorname,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [Image.asset(imagename), Text(containername)],
        ),
      ),
    );
  }
}
