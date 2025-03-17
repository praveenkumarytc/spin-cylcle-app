import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({
    super.key,
    required this.imagetype,
    required this.imageName,
  });
  final String imagetype;
  final String imageName;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,

      width: MediaQuery.of(context).size.width * .9,
      decoration: BoxDecoration(
        color: Color(0xffF8F8F8),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(height: 20, width: 20, child: SvgPicture.asset(imagetype)),
          SizedBox(width: 30),
          Text(imageName),
        ],
      ),
    );
  }
}
