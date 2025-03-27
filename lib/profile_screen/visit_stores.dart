import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:service/profile_screen/view_more.dart';

import 'package:service/utils/colors.dart';
import 'package:service/utils/image.dart';

class VisitStores extends StatefulWidget {
  const VisitStores({super.key});

  @override
  State<VisitStores> createState() => _VisitStoresState();
}

class _VisitStoresState extends State<VisitStores> {
  FocusNode visitStrore = FocusNode();
  TextEditingController mapsearchcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: Mycolors.whiteColor,
        appBar: AppBar(
          backgroundColor: Mycolors.purpleColor,
          title: Text(
            "visit stores",
            style: TextStyle(color: Mycolors.whiteColor),
          ),
        ),
        body: Column(
          children: [
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width * 1,
              color: Mycolors.greenColor,
              child: Stack(
                children: [
                  Image.asset(
                    width: MediaQuery.of(context).size.width * 1,
                    height: 200,
                    fit: BoxFit.fill,
                    Images.rectanglemap,
                  ),
                  Positioned(
                    left: 40,
                    right: 40,
                    top: 30,
                    child: Container(
                      height: 43,
                      width: MediaQuery.of(context).size.width * .8,
                      decoration: BoxDecoration(
                        color: Mycolors.whiteColor,
                        boxShadow: [
                          BoxShadow(
                            color: Mycolors.greyColor,
                            blurRadius: 3,
                            offset: Offset(0, 3),
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: TextFormField(
                          controller: mapsearchcontroller,
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.search, color: Colors.grey),
                            hintText:
                                "Lucknow Integral Univerti Kursi road 226026 india",
                            hintStyle: TextStyle(fontSize: 14),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            mapsearchcontroller.text.isNotEmpty
                ? Expanded(
                  child: Container(
                    height: double.infinity,
                    width: MediaQuery.of(context).size.width * 1,
                    decoration: BoxDecoration(
                      color: Mycolors.whiteColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(18),
                        topRight: Radius.circular(18),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withValues(alpha: .7),
                          blurRadius: 4,
                          spreadRadius: 3,
                          offset: Offset(3, 0),
                        ),
                      ],
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20),
                          Center(
                            child: Container(
                              width: MediaQuery.of(context).size.width * .15,
                              height: 6,
                              decoration: BoxDecoration(
                                color: Mycolors.pinkColor,
                                borderRadius: BorderRadius.circular(80),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text("Nearest Store to you"),
                          ),

                          SizedBox(height: 15),
                          SearchAddress(
                            shopname: "Brookfield",
                            openorclosed: "open",
                            colorname: Mycolors.greenColor,
                          ),
                          SizedBox(height: 15),
                          SearchAddress(
                            shopname: "HRS",
                            openorclosed: "Closed",
                            colorname: Colors.red,
                          ),
                          SizedBox(height: 15),
                          SearchAddress(
                            shopname: "vignanagar",
                            openorclosed: "open",
                            colorname: Mycolors.greenColor,
                          ),
                          SizedBox(height: 15),

                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ViewMore(),
                                ),
                              );
                            },
                            child: Center(
                              child: Container(
                                height: 40,
                                width: MediaQuery.of(context).size.width * .22,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                    color: Mycolors.greenColor,
                                    width: 2.1,
                                  ),
                                ),
                                child: Center(child: Text("View more")),
                              ),
                            ),
                          ),
                          SizedBox(height: 30),
                        ],
                      ),
                    ),
                  ),
                )
                : Container(),
          ],
        ),
      ),
    );
  }
}

class Rowwidgets extends StatelessWidget {
  const Rowwidgets({
    super.key,
    required this.directionname,
    required this.iconname,
  });
  final String directionname;
  final IconData iconname;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 29,

      decoration: BoxDecoration(
        color: Mycolors.lightgreenColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Mycolors.greyColor),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Row(
          children: [
            Icon(size: 19, iconname, color: Mycolors.greenColor),
            Text(
              directionname,
              style: TextStyle(color: Mycolors.greenColor, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}

// this widget used for the address which are searching
class SearchAddress extends StatelessWidget {
  const SearchAddress({
    super.key,
    required this.shopname,
    required this.openorclosed,
    required this.colorname,
  });
  final String shopname;
  final String openorclosed;
  final Color colorname;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 140,
        width: MediaQuery.of(context).size.width * .9,
        decoration: BoxDecoration(
          color: Mycolors.lightgreyColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                  child: SvgPicture.asset(Images.locationsvg),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    shopname,
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text("5.0 ⭐ spine cycle laundry"),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(openorclosed, style: TextStyle(color: colorname)),
                ),
                SizedBox(width: 7),
                Text("Close 10 pm 16 km away ", style: TextStyle()),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text("visit onece and we will serve as king "),
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Rowwidgets(
                  directionname: 'direction',
                  iconname: Icons.directions,
                ),
                Rowwidgets(directionname: 'call', iconname: Icons.call),
                Rowwidgets(directionname: 'Share', iconname: Icons.share),
                Rowwidgets(directionname: 'Save', iconname: Icons.save),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
