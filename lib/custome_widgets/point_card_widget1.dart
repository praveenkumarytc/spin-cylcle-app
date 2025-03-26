import 'package:flutter/material.dart';

class PointCardWidget1 extends StatelessWidget {
  const PointCardWidget1({
    super.key,
    required this.ID,
    required this.Bonus,
    required this.Date,
    required this.Status,
    required this.Points,
  });

  final String Date;
  final String ID;
  final String Status;
  final String Bonus;
  final String Points;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(Date, style: TextStyle(color: Colors.grey)),
                  Text(ID, style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(Status, style: TextStyle(color: Colors.greenAccent)),
                ],
              ),
              Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Bonus,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(Points),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
