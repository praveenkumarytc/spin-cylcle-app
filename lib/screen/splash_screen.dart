import 'package:flutter/material.dart';
import 'package:service/screen/onboarding_screen_1.dart';
import 'package:service/utils/image.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen>
    with SingleTickerProviderStateMixin {
  void splashScreen() async {
    await Future.delayed(Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnboardingScreen1()),
      );
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashScreen();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff6e3667),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Center(child: Image.asset(Images.splashLogo))],
        ),
      ),
    );
  }
}
