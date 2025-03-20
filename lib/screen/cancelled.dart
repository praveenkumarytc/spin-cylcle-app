import 'package:flutter/material.dart';
import 'package:service/custome_widgets/pop_widget.dart';

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
            TaskID: 'T1001',
            Title: 'Complete Project',
            DueDate: '25 Feb 2025',
            Priority: 'High',
            AssignedTo: 'John Doe',
          ),
        ],
      ),
    );
  }
}
