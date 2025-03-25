import 'package:flutter/material.dart';
import 'package:service/custome_widgets/pop_widget.dart';

class All extends StatelessWidget {
  const All({super.key});

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
          MenuButton(
            ID: 'OrderID #123456',
            Day: 'Monday, 24 Feb 2025',
            Time: '05:04 pm',
            Status: 'Pending',
            Date: '9 Feb 2025',
            Clock: '20-21:59',
          ),
          OrderWidget(
            OrderID: 'OrderID #123456',
            Date: 'Monday, 24 Feb 2025',
            Time: '05:04 pm',
            Status: 'Pending',
            Location: '9 Feb 2025',
            Clock: '21:20:33',
          ),
          ProductCard(
            ProductID: 'OrderID #123456',
            Name: 'Monday, 24 Feb 2025',
            Time: '05:04 pm',
            Description: 'Pending',
            Price: '9 Feb 2025',
            Category: '21:20:33',
          ),
          TaskCard(
            TaskID: 'OrderID #123456',
            Title: 'Monday, 24 Feb 2025',
            DueDate: 'Monday',
            Time: '05:04 pm',
            Priority: 'Pending',
            AssignedTo: '9 Feb 2025',
            Clock: '21:20:33',
          ),
        ],
      ),
    );
  }
}
