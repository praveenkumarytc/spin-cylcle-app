import 'package:flutter/material.dart';

class PointCardWidget extends StatelessWidget {
  const PointCardWidget({
    super.key,
    required this.Profile,
    required this.Name,
    required this.No,
    required this.Date,
    required this.Status,
    required this.Points,
  });

  final String Profile;
  final String Name;
  final String No;
  final String Date;
  final String Status;
  final String Points;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Row(
            children: [
              Image.asset(Profile),
              SizedBox(width: 14),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(Name, style: TextStyle(fontWeight: FontWeight.bold)),
                    Row(
                      children: [
                        Text(No, style: TextStyle(color: Colors.grey)),
                        Text(' | ', style: TextStyle(color: Colors.grey)),
                        Text(Date, style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      Status,
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(Points, style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
