import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:service/utils/image.dart';

class Myorders extends StatefulWidget {
  const Myorders({super.key});

  @override
  State<Myorders> createState() => _MyordersState();
}

class _MyordersState extends State<Myorders> {
  final iconsList = [
    Icon(Icons.home, color: Colors.white),
    Icon(Icons.wallet, color: Colors.white),
    Icon(Icons.add, color: Colors.white),
    Icon(Icons.sell, color: Colors.white),
    Icon(Icons.account_circle, color: Colors.white),
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      bottomNavigationBar: CurvedNavigationBar(
        items: iconsList,
        backgroundColor: Colors.transparent,
        color: Color(0xffAC0097),
        buttonBackgroundColor: Color(0xff8BC33D),
      ),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.filter_alt_outlined,
              size: 34,
              color: Colors.white,
            ),
          ),
          PopupMenuButton(
            itemBuilder:
                (context) => [
                  PopupMenuItem(child: Text("All")),
                  PopupMenuItem(child: Text("Active orders")),
                  PopupMenuItem(child: Text("Complete order")),
                  PopupMenuItem(child: Text("cancelled orders")),
                ],
          ),
        ],
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xff6E3667), Color(0xffAC0097)],
              begin: Alignment(0, 2),
            ),
          ),
        ),
        title: Text("My Orders", style: TextStyle(color: Colors.white)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: ListView.builder(
          itemCount: 8,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 8)],
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: SvgPicture.asset(Images.solarwashing),
                    title: Text("Order Id #67348"),
                    subtitle: Text("Monday, 23 Feb, 2025 05:30 PM"),
                    trailing: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 4,
                        horizontal: 16,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xffF1D3FF),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text("Pending"),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:
                        List.generate(
                          ((size.toInt() - 48) / 12).toInt(),
                          (index) => Container(
                            margin:
                                index == 1
                                    ? EdgeInsets.only(right: 4)
                                    : index == (size.toInt() / 12).toInt() - 1
                                    ? EdgeInsets.only(left: 4)
                                    : EdgeInsets.symmetric(horizontal: 4),
                            color: Color(0xffDBDBDB),
                            height: 2,
                            width: 4,
                          ),
                        ).toList(),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Row(
                      children: [
                        SizedBox(width: 24),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SvgPicture.asset(Images.truck),

                            Column(
                              children: [
                                Text("23 Feb, 2023"),
                                Row(
                                  children: [
                                    Icon(Icons.watch_later_outlined, size: 18),
                                    SizedBox(width: 4),
                                    Text("23 Feb, 2023"),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Spacer(),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SvgPicture.asset(Images.truck),
                            Column(
                              children: [
                                Text("23 Feb, 2023"),
                                Row(
                                  children: [
                                    Icon(Icons.watch_later_outlined, size: 18),
                                    SizedBox(width: 4),
                                    Text("23 Feb, 2023"),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(width: 24),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20),

      child: Container(
        height: 120,
        width: MediaQuery.of(context).size.width * .9,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withValues(alpha: .5),
              blurRadius: 3,
              spreadRadius: 4,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset(Images.solarwashing),
            Padding(
              padding: EdgeInsets.only(top: 25),
              child: Column(
                children: [
                  Text(
                    "order ID #9378349A",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  Text("Moday 23 feb 2025"),
                  Text("05:30 PM"),
                ],
              ),
            ),
            Container(
              height: 35,
              width: MediaQuery.of(context).size.width * .19,
              decoration: BoxDecoration(
                color: Color(0xffF1D3FF),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(child: Text("Pending")),
            ),
          ],
        ),
      ),
    );
  }
}
