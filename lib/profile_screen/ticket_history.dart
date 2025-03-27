import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:service/custome_widgets/help_raised_ticket.dart';
import 'package:service/profile_screen/createticket.dart';
import 'package:service/utils/colors.dart';

class TicketHistory extends StatefulWidget {
  const TicketHistory({super.key});

  @override
  State<TicketHistory> createState() => _TicketHistoryState();
}

class _TicketHistoryState extends State<TicketHistory> {
  TextEditingController ticketcontroller = TextEditingController();
  FocusNode tickethistory = FocusNode();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Mycolors.purpleColor,
          title: Text(
            "Ticket History",
            style: TextStyle(color: Mycolors.whiteColor),
          ),
        ),
        body: Column(
          children: [
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                controller: ticketcontroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  suffixIcon: Icon(Icons.search),
                  hintText: "Search Ticket",
                  focusColor: Mycolors.greyColor,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Mycolors.greyColor),
                  ),
                ),
              ),
            ),

            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Ticket",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
                Text(
                  "Subject ",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
                Text(
                  "Date",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
                Text(
                  "Status",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(height: 15),
            ticketcontroller.text.isNotEmpty
                ? Column(
                  children: [
                    Rowtext(
                      text1: '#1',
                      text2: 'stain not removed',
                      text3: '12/2/2025',
                      text4: 'open',
                    ),
                    SizedBox(height: 15),
                    Rowtext(
                      text1: '#1',
                      text2: 'stain not removed',
                      text3: '12/2/2025',
                      text4: 'closed',
                    ),
                    SizedBox(height: 15),
                    Rowtext(
                      text1: '#12',
                      text2: 'clothes damaged',
                      text3: '2/2/2025',
                      text4: 'open',
                    ),
                    SizedBox(height: 15),
                    Rowtext(
                      text1: '#23',
                      text2: 'not proper failed',
                      text3: '2/4/2025',
                      text4: 'closed',
                    ),
                  ],
                )
                : Container(),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Createticket()),
                );
              },
              child: Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.width * .8,
                ),
                child: HelpRaisedTicket(
                  buttonname: "Raise a New ticket",
                  iconsname: Icons.add,
                  colorname: Mycolors.greenColor,
                  textcolor: Mycolors.blackcolor,
                  iconcolor: Mycolors.blackcolor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Rowtext extends StatelessWidget {
  const Rowtext({
    super.key,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
  });
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          text1,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
        ),
        Text(
          text2,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
        ),
        Text(
          text3,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
        ),
        Text(
          text4,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
        ),
      ],
    );
  }
}
