import 'package:flutter/material.dart';

class DottedLine extends StatelessWidget {
  const DottedLine({super.key});
  

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:
          List.generate(
            ((size.toInt() - 48) / 10.5).toInt(),
            (index) => Container(
              margin:
                  index == 1
                      ? EdgeInsets.only(right: 0)
                      : index == (size.toInt() / 12).toInt() - 4
                      ? EdgeInsets.only(left: 4)
                      : EdgeInsets.symmetric(horizontal: 4),
              color: Color(0xffDBDBDB),
              height: 2,
              width: 4,
            ),
          ).toList(),
    );
  }
}
