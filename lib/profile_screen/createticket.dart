import 'package:flutter/material.dart';

import 'package:service/custome_widgets/help_raised_ticket.dart';
import 'package:service/profile_screen/chat_on.dart';
import 'package:service/utils/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Createticket extends StatefulWidget {
  const Createticket({super.key});

  @override
  State<Createticket> createState() => _CreateticketState();
}

class _CreateticketState extends State<Createticket> {
  TextEditingController mycontroller = TextEditingController();
  int maxline = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mycolors.whiteColor,
      appBar: AppBar(
        backgroundColor: Mycolors.purpleColor,
        title: Text(
          "Create Ticket",
          style: TextStyle(color: Mycolors.whiteColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 43),
            Text("Title"),
            SizedBox(height: 6),
            TextFormField(
              maxLines: maxline,
              minLines: 1,
              onChanged: (text) {
                int newLines = text.split('\n').length;
                setState(() {
                  maxline = newLines.clamp(1, 10);
                });
              },
              controller: mycontroller,
              decoration: InputDecoration(
                focusColor: Mycolors.greyColor,
                focusedBorder: OutlineInputBorder(),
                hintText: "Enter Ticket title",
                hintStyle: TextStyle(fontSize: 12),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Mycolors.greyColor),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text("Discription"),
            SizedBox(height: 6),
            TextFormField(
              minLines: 1,
              decoration: InputDecoration(
                focusColor: Mycolors.greyColor,
                focusedBorder: OutlineInputBorder(),
                hintText: "Enter Discription",
                hintStyle: TextStyle(fontSize: 12),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Mycolors.greyColor),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text("Attach Photo"),
            SizedBox(height: 6),
            TextFormField(
              minLines: 1,
              decoration: InputDecoration(
                focusColor: Mycolors.greyColor,
                focusedBorder: OutlineInputBorder(),
                hintText: "Attach photo",
                hintStyle: TextStyle(fontSize: 12),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Mycolors.greyColor),
                ),
              ),
            ),
            SizedBox(height: 360),
            mycontroller.text.isNotEmpty
                ? GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ChatOn()),
                    );
                  },
                  child: HelpRaisedTicket(
                    buttonname: "Submit",
                    iconsname: Icons.do_not_touch,
                    colorname: Mycolors.greenColor,
                    textcolor: Mycolors.blackcolor,
                    iconcolor: Mycolors.greenColor,
                  ),
                )
                : HelpRaisedTicket(
                  buttonname: "Submit",
                  iconsname: Icons.do_not_touch,
                  colorname: Mycolors.lightgreenColor,
                  textcolor: Mycolors.greenColor,
                  iconcolor: Mycolors.lightgreenColor,
                ),
          ],
        ),
      ),
    );
  }
}
