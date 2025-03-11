import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Remarkeidget extends StatelessWidget {
  const Remarkeidget({super.key, required this.enterRmark, required this.imagename});
  final SvgPicture imagename;
  final String enterRmark;

  @override
  Widget build(BuildContext context) {
    return  Padding(
              padding: EdgeInsets.only(left: 24, right: 24),
              child: Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(width: 1),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(width: 6),
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 10),
                      child: imagename
                    ),
                    SizedBox(width: 8),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        enterRmark,
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
            );
  }
}