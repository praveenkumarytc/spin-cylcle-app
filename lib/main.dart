import 'package:flutter/material.dart';
import 'package:service/screen/bottom_nav_details.dart';
import 'package:service/screen/myorders.dart';
import 'package:service/screen/notification.dart';
import 'package:service/screen/splash_screen.dart';
import 'package:service/screen/notification.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const AccountDetails(),
      //  Splashscreen(), Notification1(),
    );
  }
}
