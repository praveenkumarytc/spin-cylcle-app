import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:service/utils/image.dart';

class FullNameWidget extends StatelessWidget {
  const FullNameWidget({
    super.key,
    required this.colorsname,
    required this.picture,
    required this.textfieldcontroller,
    required this.hintname,
  });
  final SvgPicture picture;
  final TextEditingController textfieldcontroller;
  final Color colorsname;
  final String hintname;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: TextFormField(
        controller: textfieldcontroller,
        decoration: InputDecoration(
          hintText: hintname,
          prefixIcon: Container(padding: EdgeInsets.all(10), child: picture),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: colorsname, width: 2),
          ),

          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
