import 'package:flutter/material.dart';

class Dotted extends StatelessWidget {
  const Dotted({super.key,required this.num});

  final int num;

  @override

  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:
      List.generate(
        ((size.toInt() - 48) / num).toInt(),
            (index) => Container(
          margin:
          index == 1
              ? EdgeInsets.only(right: 4)
              : index == (size.toInt() / 12).toInt() - 1
              ? EdgeInsets.only(left: 4)
              : EdgeInsets.symmetric(horizontal: 4),
          color: Colors.grey,
          height: 2,
          width: 4,
        ),
      ).toList(),
    );

  }
}
