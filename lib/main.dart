import 'package:flutter/material.dart';
import 'package:service/screen/splash_screen.dart';

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

      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple), textTheme: TextTheme(headlineSmall: TextStyle(color: Colors.red, fontSize: 15))),
      home: const Splashscreen(),
    );
  }
}
