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
            ProductID: 'OrderID #123456',
            Name: 'Monday, 24 Feb 2025',
            Time: '05:04 pm',
            Description: 'Pending',
            Price: '9 Feb 2025',
            Category: '21:20:33',
          ),
        ],
      ),
    );
  }
}
