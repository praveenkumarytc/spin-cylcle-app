import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RowPromooCode extends StatelessWidget {
  const RowPromooCode({
    super.key,
    required this.havePromo,
    required this.imagename,
    required this.apply,
  });
  final SvgPicture imagename;
  final String havePromo;
  final String apply;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24, right: 24, top: 10),
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(width: 1),
          borderRadius: BorderRadius.circular(10),
          shape: BoxShape.rectangle,
        ),
        child: Row(
          children: [
            Padding(padding: EdgeInsets.only(left: 12), child: imagename),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(right: 10, left: 10),
                height: 25,
                width: 130,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: const Color.fromARGB(255, 135, 215, 138),
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Center(
                    child: Text(
                      havePromo,
                      style: TextStyle(color: Colors.green),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 12),
              child: Container(
                height: 30,
                width: 80,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 214, 247, 215),
                  border: Border.all(
                    width: 1,
                    color: const Color.fromARGB(255, 135, 215, 138),
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(apply, style: TextStyle(color: Colors.green)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
