import 'package:flutter/material.dart';
import 'package:service/custome_widgets/help_raised_ticket.dart';
import 'package:service/profile_screen/createticket.dart';
import 'package:service/profile_screen/ticket_history.dart';
import 'package:service/utils/colors.dart';
import 'package:service/utils/image.dart';

class HelpandSupport extends StatefulWidget {
  const HelpandSupport({super.key});

  @override
  State<HelpandSupport> createState() => _HelpandSupportState();
}

class _HelpandSupportState extends State<HelpandSupport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mycolors.whiteColor,
      appBar: AppBar(
        backgroundColor: Mycolors.purpleColor,
        title: Text(
          "Help and support",
          style: TextStyle(color: Mycolors.whiteColor),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width * 1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  child: Image.asset(
                    fit: BoxFit.fill,
                    width: MediaQuery.of(context).size.width * 1,
                    Images.helpsupportbackground,
                  ),
                ),

                Positioned(
                  left: 20,
                  top: 10,
                  child: Container(
                    height: 180,
                    width: 180,
                    child: Image.asset(Images.helpandsupport),
                  ),
                ),
                Positioned(
                  left: MediaQuery.of(context).size.width * .5,
                  top: MediaQuery.of(context).size.width * .1,
                  child: Text(
                    "Hello !",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                Positioned(
                  left: MediaQuery.of(context).size.width * .5,
                  top: MediaQuery.of(context).size.width * .2,
                  child: Text(
                    "How can we help ",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
                Positioned(
                  left: MediaQuery.of(context).size.width * .5,
                  top: MediaQuery.of(context).size.width * .27,
                  child: Text(
                    "You?",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              "Need Help? Pick a Convenient Way to ",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              "Connect with us ",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Contactoption(
                  imagename: Images.whatsaapicon,
                  text1: "Message on",
                  text2: " whats app",
                ),

                Contactoption(
                  imagename: Images.emailicon,
                  text1: "send on",
                  text2: "email",
                ),
                Contactoption(
                  imagename: Images.callicon,
                  text1: "Make a call",
                  text2: "",
                ),
              ],
            ),
          ),
          SizedBox(height: 200),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Createticket()),
              );
            },
            child: HelpRaisedTicket(
              buttonname: "Raise ticker",
              iconsname: Icons.question_mark,
              colorname: Mycolors.greenColor,
              textcolor: Mycolors.blackcolor,
              iconcolor: Mycolors.blackcolor,
            ),
          ),
          SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TicketHistory()),
              );
            },
            child: HelpRaisedTicket(
              buttonname: "Ticket History",
              iconsname: Icons.question_mark,
              colorname: Mycolors.lightgreenColor,
              textcolor: Mycolors.greenColor,
              iconcolor: Mycolors.greenColor,
            ),
          ),
        ],
      ),
    );
  }
}

class Contactoption extends StatelessWidget {
  const Contactoption({
    super.key,
    required this.imagename,
    required this.text1,
    this.text2,
  });
  final String text1;
  final String? text2;
  final String imagename;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95,
      width: MediaQuery.of(context).size.width * .27,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Mycolors.whiteColor,
        border: Border.all(width: .3, color: Mycolors.greyColor),
        boxShadow: [
          BoxShadow(
            blurRadius: 2,
            spreadRadius: 2,
            offset: Offset(0, 1),
            color: Colors.grey.withValues(alpha: .5),
          ),
        ],
      ),
      child: Column(
        children: [
          SizedBox(height: 5),
          Image.asset(
            height: MediaQuery.of(context).size.width * .06,
            width: MediaQuery.of(context).size.width * .06,
            imagename,
          ),
          SizedBox(height: 5),
          Text(
            text1,
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
          ),
          Text(
            text2!,
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
