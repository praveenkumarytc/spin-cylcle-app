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
          OrderWidget(
            OrderID: 'OrderID #123456',
            Date: 'Monday, 24 Feb 2025',
            Time: '05:04 pm',
            Status: 'Pending',
            Location: '9 Feb 2025',
            Clock: '21:20:33',
          ),
        ],
      ),
    );
  }
}
