import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:service/profile_screen/ticket_closed.dart';
import 'package:service/profile_screen/ticket_not_closed.dart';
import 'package:service/screen/login1.dart';
import 'package:service/utils/colors.dart';
import 'package:service/utils/image.dart';

class ChatOn extends StatefulWidget {
  const ChatOn({super.key});

  @override
  State<ChatOn> createState() => _ChatOnState();
}

class _ChatOnState extends State<ChatOn> {
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
              containername2: GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    backgroundColor: Mycolors.whiteColor,

                    context: context,
                    builder: (context) {
                      return Container(
                        height: 250,
                        width: MediaQuery.of(context).size.width * 1,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 20),
                            Center(
                              child: Text(
                                "Are you sure  you want to close",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Text(
                              "Your ticket",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: 30),
                            Text(
                              "you won't able to make changes once it closed",
                            ),
                            SizedBox(height: 40),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    height: 45,
                                    width:
                                        MediaQuery.of(context).size.width * .3,
                                    decoration: BoxDecoration(
                                      color: Mycolors.lightgreenColor,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Cancel",
                                        style: TextStyle(fontSize: 22),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                      modelsheet();
                                    },
                                    child: Container(
                                      height: 45,
                                      width:
                                          MediaQuery.of(context).size.width *
                                          .3,
                                      decoration: BoxDecoration(
                                        color: Mycolors.greenColor,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Confirm",
                                          style: TextStyle(fontSize: 22),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: Padding(
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
              ),
              containername: Padding(
                padding: const EdgeInsets.all(10),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Ticketnotclosed(),
                      ),
                    );
                  },
                  child: Container(
                    height: 30,
                    width: MediaQuery.of(context).size.width * .12,
                    decoration: BoxDecoration(
                      border: Border.all(color: Mycolors.lightgreyColor),
                      color: Mycolors.whiteColor,
                    ),

                    child: Center(child: Text("No")),
                  ),
                ),
              ),
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

  Future modelsheet() async {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: MediaQuery.of(context).size.height * .6,
          width: MediaQuery.of(context).size.width * 1,
          decoration: BoxDecoration(
            color: Mycolors.whiteColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: 30),
              Text(
                "Your ticket has been closed",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              Text(
                "Please Share your feedback",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),

              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * .69,
                ),
                child: Text(
                  "Detail Review",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  maxLines: 5,
                  decoration: InputDecoration(
                    hintText: "Write something",
                    hintStyle: TextStyle(color: Mycolors.greyColor),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Ticketclosed()),
                  );
                },
                child: Container(
                  height: 45,
                  width: MediaQuery.of(context).size.width * .8,
                  decoration: BoxDecoration(
                    color: Mycolors.lightgreenColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "Send Review",
                      style: TextStyle(
                        fontSize: 22,
                        color: Mycolors.greenColor,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
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
