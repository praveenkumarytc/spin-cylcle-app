import 'package:flutter/material.dart';
import 'package:service/custome_widgets/dotted.dart';

class MenWidget extends StatelessWidget {
  const MenWidget({
    super.key,
    required this.T1,
    required this.T2,
    required this.T3,
    required this.T4,
    required this.T5,
    required this.T6,
    required this.T7,
    required this.T8,
    required this.T9,
    required this.T10,
  });

  final String T1;
  final String T2;
  final String T3;
  final String T4;
  final String T5;
  final String T6;
  final String T7;
  final String T8;
  final String T9;
  final String T10;

  @override
  Widget build(BuildContext context) {
    return Column( // Removed Scaffold and just return the Column
      children: [
        Row(
          children: [
            Text(
              T1,
              style: TextStyle(color: Color(0xFF6E3667), fontSize: 20),
            ),
          ],
        ),
        Container(
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            border: Border.all(color: Color(0xFF6E3667), width: 1),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      T2,
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Dotted(num: 12),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(T3, style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 10,
                        ),
                        Text(T5, style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 10,
                        ),

                        Text(T7, style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 10,
                        ),

                        Text(T9, style: TextStyle(fontWeight: FontWeight.bold)),

                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      children: [
                        Text('—', style: TextStyle(color: Color(0xFF6E3667))),
                        SizedBox(
                          height: 10,
                        ),

                        Text('—', style: TextStyle(color: Color(0xFF6E3667))),
                        SizedBox(
                          height: 10,
                        ),

                        Text('—', style: TextStyle(color: Color(0xFF6E3667))),
                        SizedBox(
                          height: 10,
                        ),

                        Text('—', style: TextStyle(color: Color(0xFF6E3667))),

                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      children: [
                        Text(T4, style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 10,
                        ),

                        Text(T6, style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 10,
                        ),

                        Text(T8, style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 10,
                        ),

                        Text(T10, style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
