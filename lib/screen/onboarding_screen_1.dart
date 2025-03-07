import 'package:flutter/material.dart';
import 'package:service/screen/login1.dart';
import 'package:service/screen/onboaard_screen4.dart';
import 'package:service/screen/onboarad_screen5.dart';
import 'package:service/screen/onboarding_screen2.dart';
import 'package:service/screen/onboarding_screen3.dart';
import 'package:service/utils/image.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen1 extends StatefulWidget {
  const OnboardingScreen1({super.key});

  @override
  State<OnboardingScreen1> createState() => _OnboardingScreen1State();
}

class _OnboardingScreen1State extends State<OnboardingScreen1> {
  final _pagecontroller = PageController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        body: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _pagecontroller,
                children: [
                  OnboardingScreen5(),
                  OnboardingScreen2(),
                  OnboardingScreen3(),
                  OnboardingScreen4(),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(bottom: 34),
              child: SmoothPageIndicator(
                controller: _pagecontroller,
                count: 4,
                effect: ExpandingDotsEffect(
                  strokeWidth: 12,
                  dotColor: Color(0xff6e3667),
                  activeDotColor: Color(0xff6e3667),
                ),
              ),
            ),

            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage1()),
                );
              },
              child: Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Container(
                  height: 45,
                  width: MediaQuery.of(context).size.width * .80,
                  decoration: BoxDecoration(
                    color: Color(0xff8EC63F),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Get Started"), 
                      Icon(Icons.arrow_forward)
                      
                      ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
