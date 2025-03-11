import 'package:flutter/material.dart';
import 'package:service/utils/image.dart';

class OnboardingScreen2 extends StatefulWidget {
  const OnboardingScreen2({super.key});

  @override
  State<OnboardingScreen2> createState() => _OnboardingScreen2State();
}

class _OnboardingScreen2State extends State<OnboardingScreen2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Container(
                    height: 25,
                    width: 62,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFF8EC63F)),
                      color: const Color.fromARGB(255, 158, 193, 159),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 4),
                        Text("Skip"),
                        SizedBox(width: 4),
                        Icon(Icons.skip_next),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Text("Fresh   Clothes", style: TextStyle(fontSize: 24)),
            Text("Zero   Hassle!", style: TextStyle(fontSize: 24)),

            Text(
              "Fast , reliable  and  professinal ",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              "Laundry  services  at your  fingertips",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width * .80,

              child: Image.asset(fit: BoxFit.cover, Images.boardingBody2),
            ),
          ],
        ),
      ),
    );
  }
}
