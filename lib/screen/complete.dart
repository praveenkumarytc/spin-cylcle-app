import 'package:flutter/material.dart';
import 'package:service/custome_widgets/pop_widget.dart';

class Complete extends StatelessWidget {
  const Complete({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(children: [Text('All'), Spacer(), Text('Total')]),
          ),
          SizedBox(height: 20),
          ProductCard(
            ProductID: 'P123',
            Name: 'Smartphone',
            Description: 'Latest model with great features',
            Price: '\$699',
            Category: 'Electronics',
          ),
        ],
      ),
    );
  }
}
