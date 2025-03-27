import 'package:flutter/material.dart';
import 'package:service/utils/colors.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    super.key,
    required this.colorname,
    required this.buttonname,
  });
  final String buttonname;
  final Color colorname;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: MediaQuery.of(context).size.width * .2,

      decoration: BoxDecoration(
        border: Border.all(color: Mycolors.greenColor, width: 1),
        color: colorname,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(child: Text(buttonname)),
    );
  }
}

class Feedbackname extends StatelessWidget {
  const Feedbackname({super.key, required this.feedbackname});
  final String feedbackname;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 25,

        right: MediaQuery.of(context).size.width * .1,
      ),
      child: Text(
        feedbackname,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          color: Mycolors.greyColor,
          fontSize: 17,
        ),
      ),
    );
  }
}
