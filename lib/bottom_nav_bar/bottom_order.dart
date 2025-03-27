import 'package:flutter/material.dart';
import 'package:service/utils/colors.dart';

class BottomSell extends StatelessWidget {
  const BottomSell({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mycolors.whiteColor,

      body: Center(child: Text("orders")),
    );
  }
}
