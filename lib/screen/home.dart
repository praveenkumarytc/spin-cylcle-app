import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:service/bottom_nav_bar/bottom_accounts.dart';
import 'package:service/bottom_nav_bar/bottom_add.dart';
import 'package:service/bottom_nav_bar/bottom_home.dart';
import 'package:service/bottom_nav_bar/bottom_order.dart';
import 'package:service/bottom_nav_bar/bottom_wallet.dart';
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
  var indexx = 0;
  final screens = [
    BottomHome(),
    BottomSell(),
    BottomAdd(),
    BottomWallet(),
    BottomAccounts(),
  ];
  final iconsList = [
    Icon(Icons.home, color: Colors.white),
    Icon(Icons.wallet, color: Colors.white),
    Icon(Icons.add, color: Colors.white),
    Icon(Icons.wallet, color: Colors.white),
    Icon(Icons.account_circle, color: Colors.white),
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        animationDuration: Duration(milliseconds: 300),
        buttonBackgroundColor: Color(0xff8BC33D),
        onTap: (selectedindex) {
          setState(() {
            indexx = selectedindex;
          });
        },
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
      body: screens[indexx],
    );
  }
}
