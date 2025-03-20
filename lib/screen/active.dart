import 'package:flutter/material.dart';
import 'package:service/custome_widgets/pop_widget.dart';

class Active extends StatelessWidget {
  const Active({super.key});

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
          OrderCard(
            OrderID: '12345',
            Date: '23 Feb 2025',
            Time: '10:00 AM',
            Status: 'Completed',
            Location: 'New York',
          ),
        ],
      ),
    );
  }
}
