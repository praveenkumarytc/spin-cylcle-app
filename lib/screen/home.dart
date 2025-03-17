import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:service/custome_widgets/delivery_type_icon.dart'
    show DeliveryTypeIcon;

import 'package:service/custome_widgets/discount_container.dart';
import 'package:service/custome_widgets/whatsaapcontainer.dart';
import 'package:service/screen/home2.dart';

import 'package:service/utils/image.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final iconsList = [
    Icon(Icons.home, color: Colors.white),
    Icon(Icons.wallet, color: Colors.white),
    Icon(Icons.add, color: Colors.white),
    Icon(Icons.home, color: Colors.white),
    Icon(Icons.account_circle, color: Colors.white),
  ];
  int index = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        buttonBackgroundColor: Color(0xff8BC33D),

        height: 64,
        backgroundColor: Colors.transparent,
        color: Color(0xff6E3667),
        index: index,
        items: iconsList,
      ),

      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: CircleAvatar(
              radius: 16,
              backgroundColor: Colors.white,
              child: Icon(Icons.notifications_outlined),
            ),
          ),
        
        ],
        leading: Padding(
          padding: EdgeInsets.only(left: 20),
          child: CircleAvatar(backgroundColor: Colors.amber),
        ),
        backgroundColor: Color(0xff6E3667),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Inventics", style: TextStyle(color: Colors.white)),
            Text(
              "Lucknow integral Iniversity",
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 10),
                  Container(
                    height: 90,
                    width: MediaQuery.of(context).size.width * .5,

                    child: Image.asset(Images.freshImage),
                  ),
                  SizedBox(width: 10),

                  Container(
                    height: 90,
                    width: MediaQuery.of(context).size.width * .5,

                    child: Image.asset(Images.freshImage),
                  ),
                  SizedBox(width: 10),

                  Container(
                    height: 90,
                    width: MediaQuery.of(context).size.width * .5,

                    child: Image.asset(Images.freshImage),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text("Select your Delivery Type", style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                DeliveryTypeIcon(iconname: Image.asset(Images.car)),
                DeliveryTypeIcon(iconname: Image.asset(Images.flight)),
                DeliveryTypeIcon(iconname: Image.asset(Images.rocket)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [Text("Normal"), Text("Express"), Text("Express")],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                Padding(
                  padding: EdgeInsets.only(left: 120),
                  child: Text("(Two Days)"),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text("(Next Day)"),
                ),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("Offers"), Text("View all")],
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                SizedBox(width: 10),
                DiscountContainer(
                  discountname: Image.asset(
                    fit: BoxFit.fill,
                    Images.discountpurple,
                  ),
                ),
                SizedBox(width: 10),
                DiscountContainer(
                  discountname: Image.asset(
                    fit: BoxFit.fill,
                    Images.discountorange,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Whatsaapcontainer(
              whataapimage: Image.asset(fit: BoxFit.fill, Images.whataapimage),
            ),
            SizedBox(height: 10),

            Text(
              "No Orders Yet",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              "your first laundry order is waiting start accepting",
              style: TextStyle(color: Colors.grey),
            ),
            Text(
              "orders and keeps things fresh and clean",
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home2()),
                );
              },
              child: Text(
                "Request On Order",
                style: TextStyle(color: Colors.green, fontSize: 23),
              ),
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
