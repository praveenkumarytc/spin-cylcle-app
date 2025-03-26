import 'package:flutter/material.dart';
import 'package:service/points/points.dart';
import 'package:service/screen/my_orders.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Spin Cycle',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const Points() //points()Services()Orders()RateCard(),
    );
  }
}
//
