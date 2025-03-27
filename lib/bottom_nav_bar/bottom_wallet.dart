import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:service/utils/colors.dart';
import 'package:service/utils/image.dart';

class BottomWallet extends StatelessWidget {
  const BottomWallet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                height: 200,
                width: MediaQuery.of(context).size.width * .90,
                decoration: BoxDecoration(
                  color: Mycolors.purpleColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SvgPicture.asset(fit: BoxFit.fill, Images.walletbalance),
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "Wallet History",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(width: 206),
              SvgPicture.asset(Images.filter),
            ],
          ),
          SizedBox(height: 6),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "RS 100",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(width: MediaQuery.of(context).size.width * .58),
              Text("2024-11-10", style: TextStyle(color: Colors.grey)),
            ],
          ),
          SizedBox(height: 6),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "Add fund",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(width: MediaQuery.of(context).size.width * .55),
              Text("2024-11-10", style: TextStyle(color: Colors.grey)),
            ],
          ),
        ],
      ),
    );
  }
}
