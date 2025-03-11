import 'package:flutter/material.dart';

class OrderRequest extends StatelessWidget {
  const OrderRequest({super.key, required this.yourText});
  final String yourText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 24),
      child: Container(
        height: 55,
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color.fromARGB(150, 177, 215, 172),
          border: Border.all(width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            yourText,
            style: TextStyle(fontSize: 20, color: Colors.green),
          ),
        ),
      ),
    );
  }
}
