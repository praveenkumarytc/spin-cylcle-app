import 'package:flutter/material.dart';
import 'package:service/utils/colors.dart';

class ViewMore extends StatefulWidget {
  const ViewMore({super.key});

  @override
  State<ViewMore> createState() => _ViewMoreState();
}

class _ViewMoreState extends State<ViewMore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mycolors.whiteColor,
      appBar: AppBar(
        backgroundColor: Mycolors.purpleColor,
        title: Text("Back", style: TextStyle(color: Mycolors.whiteColor)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Center(
                child: Container(
                  height: MediaQuery.of(context).size.height * .5,
                  width: MediaQuery.of(context).size.width * .9,
                  decoration: BoxDecoration(
                    color: Mycolors.lightcolor,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withValues(alpha: .5),
                        blurRadius: 2,
                        offset: Offset(0, 3),
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: SingleChildScrollView(
                    child: Getdirection(storesname: "brookfield"),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Center(
                child: Container(
                  height: MediaQuery.of(context).size.height * .5,
                  width: MediaQuery.of(context).size.width * .9,
                  decoration: BoxDecoration(
                    color: Mycolors.lightcolor,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withValues(alpha: .5),
                        blurRadius: 2,
                        offset: Offset(0, 3),
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: SingleChildScrollView(
                    child: Getdirection(storesname: "HRS"),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Getdirection extends StatelessWidget {
  const Getdirection({super.key, required this.storesname});
  final String storesname;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        Center(
          child: Container(
            height: 35,
            width: MediaQuery.of(context).size.width * .22,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Mycolors.greenColor, width: 2.1),
            ),
            child: Center(child: Text("All Stores")),
          ),
        ),
        SizedBox(height: 10),
        Text(
          storesname,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 10),

        Center(
          child: Container(
            width: MediaQuery.of(context).size.width * .15,
            height: 6,
            decoration: BoxDecoration(
              color: Mycolors.greenColor,
              borderRadius: BorderRadius.circular(80),
            ),
          ),
        ),
        SizedBox(height: 10),
        Text("Lorem ipsum dolor sit amet, consectetur "),

        Text("Lorem ipsum dolor sit amet, consectetur"),
        Text("Lorem ipsum dolor sit amet, consectetur "),
        Text("Lorem ipsum dolor sit amet, consectetur"),
        SizedBox(height: 20),
        Text(
          "Customer Care: 180001700",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 70),
        Center(
          child: Container(
            height: 40,
            width: MediaQuery.of(context).size.width * .8,
            decoration: BoxDecoration(
              color: Mycolors.greenColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                "Get Direction",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
