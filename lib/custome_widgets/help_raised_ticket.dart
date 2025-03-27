import 'package:flutter/material.dart';
import 'package:service/utils/colors.dart';

class HelpRaisedTicket extends StatelessWidget {
  const HelpRaisedTicket({
    super.key,
    required this.buttonname,
    required this.iconsname,
    required this.colorname,
    required this.textcolor,
    required this.iconcolor
  });
  final String buttonname;
  final IconData iconsname;
  final Color colorname;
  final Color textcolor;
  final Color iconcolor;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 40,
        width: MediaQuery.of(context).size.width * .8,

        decoration: BoxDecoration(
          color: colorname,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              buttonname,
              style: TextStyle(
                color: textcolor,
                fontSize: 21,
                fontWeight: FontWeight.w400,
              ),
            ),
            Icon(iconsname,color: iconcolor,),
          ],
        ),
      ),
    );
  }
}
