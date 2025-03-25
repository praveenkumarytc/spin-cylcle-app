import 'package:flutter/material.dart';
import 'package:service/screen/my_orders.dart';
import 'package:service/select_services/rate_card.dart';
import 'package:service/select_services/services.dart';

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
      home: const Orders()//points()Services()Orders()RateCard(),
    );
  }
}
