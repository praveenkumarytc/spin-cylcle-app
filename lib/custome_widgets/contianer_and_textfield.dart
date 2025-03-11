import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ContianerAndTextfield extends StatelessWidget {
  const ContianerAndTextfield({super.key,required this.hintTextname,required this.imagename});
final SvgPicture imagename;
final String hintTextname;
  @override
  Widget build(BuildContext context) {
    return    Padding(
              padding: EdgeInsets.only(left: 24, right: 24),
              child: Container(
                height: 50,
                width: double.infinity,
                child: TextFormField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.chevron_right),
                    suffixIconColor: Colors.green,
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(12),
                      child: imagename
                    ),
                    hintText: hintTextname,
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            );
  }
}