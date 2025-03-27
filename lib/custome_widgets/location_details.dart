import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:service/utils/colors.dart';
import 'package:service/utils/image.dart';

class LocationDetails extends StatelessWidget {
  const LocationDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 27),
          child: Row(
            children: [
              SvgPicture.asset(Images.locationsvg),
              SizedBox(width: 10),
              Text("38/15, Sharda Nagar Extn., Royal City "),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 55),
          child: Text("near Kalp City, Lucknow - 226002 Uttar"),
        ),
        Padding(padding: EdgeInsets.only(left: 55), child: Text("Pradesh")),
        SizedBox(height: 25),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            children: [
              SvgPicture.asset(Images.truck),
              SizedBox(width: 10),
              Text(
                "Pick Up",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            children: [
              SvgPicture.asset(Images.datesvg),
              SizedBox(width: 10),
              Text(
                "28 feb 2025",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Mycolors.greyColor,
                ),
              ),
              SizedBox(width: 40),
              Icon(
                Icons.watch_later_outlined,
                size: 20,
                color: Mycolors.greyColor,
              ),
              SizedBox(width: 10),
              Text(
                "20, 21:50",
                style: TextStyle(
                  color: Mycolors.greyColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            children: [
              SvgPicture.asset(Images.truck),
              SizedBox(width: 10),
              Text(
                "Delivery",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            children: [
              SvgPicture.asset(Images.datesvg),
              SizedBox(width: 10),
              Text(
                "29 feb 2025",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Mycolors.greyColor,
                ),
              ),
              SizedBox(width: 40),
              Icon(
                Icons.watch_later_outlined,
                size: 20,
                color: Mycolors.greyColor,
              ),
              SizedBox(width: 10),
              Text(
                "20, 20:50",
                style: TextStyle(
                  color: Mycolors.greyColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),

        SizedBox(height: 30),
        Padding(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * .1,
          ),
          child: Text(
            "Total Paid (via COD)",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * .1,
          ),
          child: Text(
            "RS 200.00",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Mycolors.greyColor,
            ),
          ),
        ),
      ],
    );
  }
}
