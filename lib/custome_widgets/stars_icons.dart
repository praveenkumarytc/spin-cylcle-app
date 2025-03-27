import 'package:flutter/material.dart';
import 'package:service/utils/colors.dart';

class StarsIcons extends StatelessWidget {
  const StarsIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Icon(Icons.star, color: Mycolors.yellowcolors),
          SizedBox(width: 10),
          Icon(Icons.star, color: Mycolors.yellowcolors),
          SizedBox(width: 10),
          Icon(Icons.star, color: Mycolors.yellowcolors),
          SizedBox(width: 10),
          Icon(Icons.star, color: Mycolors.starscolor),
          SizedBox(width: 10),
          Icon(Icons.star, color: Mycolors.starscolor),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}

class Rating extends StatelessWidget {
  const Rating({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Text(
        "Ratings",
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}
