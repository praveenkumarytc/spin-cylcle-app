import 'package:flutter/material.dart';

class DiscountContainer extends StatelessWidget {
  const DiscountContainer({super.key, required this.discountname});
  final Image discountname;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: MediaQuery.of(context).size.width * .46,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: discountname,
    );
  }
}
