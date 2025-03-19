import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:service/utils/colors.dart';
import 'package:service/utils/image.dart';

class Offers extends StatefulWidget {
  const Offers({super.key, required this.tittle});
  final String tittle;

  @override
  State<Offers> createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mycolors.whiteColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Mycolors.purpleColor,
        title: Text(widget.tittle, style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 30, top: 20, right: 10),
                child: Container(
                  height: 188,
                  width: MediaQuery.of(context).size.width * .4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Image.asset(fit: BoxFit.fill, Images.discountpurple),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 10),
                child: Container(
                  height: 188,
                  width: MediaQuery.of(context).size.width * .4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Image.asset(fit: BoxFit.fill, Images.discountpurple),
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 30, top: 20, right: 10),
                child: Container(
                  height: 188,
                  width: MediaQuery.of(context).size.width * .4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Image.asset(fit: BoxFit.fill, Images.discountorange),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 10),
                child: Container(
                  height: 188,
                  width: MediaQuery.of(context).size.width * .4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Image.asset(fit: BoxFit.fill, Images.discountorange),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
