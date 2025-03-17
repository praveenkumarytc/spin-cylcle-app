import 'package:flutter/material.dart';

class RowService extends StatelessWidget {
  const RowService({super.key, required this.imagename1, required this.imagename2,required this.imagename3});
  final Image imagename1;
  final Image imagename2;
  final Image imagename3;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 80,
          width: MediaQuery.of(context).size.width * .26,

          child: imagename1,
        ),

        Container(
          height: 80,
          width: MediaQuery.of(context).size.width * .26,

          child: imagename2,
        ),

        Container(
          height: 80,
          width: MediaQuery.of(context).size.width * .26,

          child: imagename3,
        ),
      ],
    );
  }
}
