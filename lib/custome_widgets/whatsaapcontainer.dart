import 'package:flutter/material.dart';

class Whatsaapcontainer extends StatelessWidget {
  const Whatsaapcontainer({super.key, required this.whataapimage});
  final Image whataapimage;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: MediaQuery.of(context).size.width * .94,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: whataapimage,
    );
  }
}
