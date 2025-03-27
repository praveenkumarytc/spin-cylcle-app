import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:service/screen/login1.dart';
import 'package:service/utils/colors.dart';
import 'package:service/utils/image.dart';

class Ticketnotclosed extends StatefulWidget {
  const Ticketnotclosed({super.key});

  @override
  State<Ticketnotclosed> createState() => _TicketnotclosedState();
}

class _TicketnotclosedState extends State<Ticketnotclosed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mycolors.whiteColor,
      appBar: AppBar(
        actions: [
          Padding(padding: EdgeInsets.only(right: 20), child: Text("🟢")),
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Text(
              "Open",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Mycolors.whiteColor,
              ),
            ),
          ),
        ],
        backgroundColor: Mycolors.purpleColor,
        title: Text(
          "Damaged clothes",
          style: TextStyle(color: Mycolors.whiteColor),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [Text("Recived Damaged Clothes"), Text("Today 4:23")],
            ),
            SizedBox(height: 10),
            Leftcontainer(
              imagesname: Images.bagsuitcase,
              message:
                  "I recive my order but there is clear dmage torn fabric stain stiching issue i have attached the image for reference please assist me a replacement or refund ",
            ),
            SizedBox(height: 20),
            Text("Today 6:02 pm"),
            Rightcontainer(
              message1:
                  "Sorry for the issue  we can check and repair for free would you like to proceed",
              containername: Container(),
              containername2: Container(),
            ),
            SizedBox(height: 20),
            Rightcontainer(
              message1: "has your issue beem resolved ?",
              containername2: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: 30,
                  width: MediaQuery.of(context).size.width * .12,
                  decoration: BoxDecoration(
                    border: Border.all(color: Mycolors.lightgreyColor),
                    color: Mycolors.whiteColor,
                  ),

                  child: Center(child: Text("Yes")),
                ),
              ),
              containername: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: 30,
                  width: MediaQuery.of(context).size.width * .12,
                  decoration: BoxDecoration(
                    border: Border.all(color: Mycolors.lightgreyColor),
                    color: Mycolors.greenColor,
                  ),

                  child: Center(child: Text("No")),
                ),
              ),
            ),
            SizedBox(height: 20),
            Rightcontainer(
              message1: "Let us Know and we will contineu assist you",
              containername2: Container(),
              containername: Container(),
            ),
            SizedBox(height: MediaQuery.of(context).size.width * .25),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.attachment),
                        ),
                        hintText: "Type a message...",
                        hintStyle: TextStyle(color: Mycolors.greyColor),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),

                  IconButton(
                    onPressed: () {},
                    icon: CircleAvatar(
                      backgroundColor: Mycolors.greenColor,
                      child: Icon(Icons.send_rounded),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// custome wigets

class Leftcontainer extends StatelessWidget {
  const Leftcontainer({
    super.key,
    required this.imagesname,
    required this.message,
  });
  final String message;
  final String imagesname;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CircleAvatar(backgroundImage: AssetImage(Images.profileimage)),
        Container(
          width: MediaQuery.of(context).size.width * .7,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20),
              topRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
            color: Mycolors.lightgreyColor,
          ),
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(15), child: Text(message)),

              Container(height: 90, width: 90, child: Image.asset(imagesname)),

              SizedBox(height: 30),
            ],
          ),
        ),
      ],
    );
  }
}

class Rightcontainer extends StatelessWidget {
  const Rightcontainer({
    super.key,
    required this.message1,
    this.containername,
    this.containername2,
  });
  final String message1;
  final Widget? containername;
  final Widget? containername2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * .7,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20),
              topLeft: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
            color: Mycolors.pinkColor,
          ),
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(15), child: Text(message1)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  containername2!,
                  SizedBox(width: 20),
                  containername!,
                ],
              ),
            ],
          ),
        ),
        CircleAvatar(foregroundImage: AssetImage(Images.profileimage)),
      ],
    );
  }
}
