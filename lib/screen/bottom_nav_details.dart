import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:service/bottom_nav_bar/bottom_accounts.dart';
import 'package:service/bottom_nav_bar/bottom_add.dart';
import 'package:service/bottom_nav_bar/bottom_home.dart';
import 'package:service/bottom_nav_bar/bottom_sell.dart';
import 'package:service/bottom_nav_bar/bottom_wallet.dart';
import 'package:service/custome_widgets/profile_details.dart';
import 'package:service/utils/image.dart';

class AccountDetails extends StatefulWidget {
  const AccountDetails({super.key});

  @override
  State<AccountDetails> createState() => _AccountDetailsState();
}

class _AccountDetailsState extends State<AccountDetails> {
  var indexx = 2;
  final screens = [
    BottomHome(),
    BottomSell(),
    BottomAdd(),
    BottomWallet(),
    BottomAccounts(),
  ];
  final items = [
    Icon(Icons.home, color: Colors.white),
    Icon(Icons.sell, color: Colors.white),
    Icon(Icons.add, color: Colors.white),
    Icon(Icons.wallet, color: Colors.white),
    Icon(Icons.account_box, color: Colors.white),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: CurvedNavigationBar(
        onTap: (selectedindex) {
          setState(() {
            // screens[selectedindex];
            indexx = selectedindex;
          });
        },
        animationDuration: Duration(milliseconds: 300),
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: Color(0xff8BC33D),
        color: Color(0xff6E3667),
        items: items,
        // index: index,
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xff6E3667),
        title: Text("My Account", style: TextStyle(color: Colors.white)),
      ),
      body: screens[indexx],
    );
  }
}
