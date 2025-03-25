import 'package:flutter/material.dart';
import 'package:service/custome_widgets/pop_widget.dart';
import 'package:service/points/points.dart';
import 'package:service/screen/no_orders.dart';

class Cancelled extends StatelessWidget {
  const Cancelled({super.key});

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
          TaskCard(
            TaskID: 'OrderID #123456',
            Title: 'Monday, 24 Feb 2025',
            DueDate: 'Monday',
            Time: '05:04 pm',
            Priority: 'Pending',
            AssignedTo: '9 Feb 2025',
            Clock: '21:20:33',
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NoOrders()),
                  );
                },
                child: Text('Click'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Points()),
                  );
                },
                child: Text('Click'),
              ),

            ],
          ),
        ],
      ),
    );
  }
}
