import 'package:flutter/material.dart';
import 'package:service/utils/image.dart';

class OnboardingScreen3 extends StatefulWidget {
  const OnboardingScreen3({super.key});

  @override
  State<OnboardingScreen3> createState() => _OnboardingScreen3State();
}

class _OnboardingScreen3State extends State<OnboardingScreen3> {
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
                      border: Border.all(
                        color: const Color.fromARGB(255, 179, 226, 180),
                      ),
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
            Text("Your Clothes", style: TextStyle(fontSize: 24)),
            Text("Deserv the Best!", style: TextStyle(fontSize: 24)),

            Text(
              "schedule, relax and let us handle the ",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text("cleaning", style: TextStyle(fontWeight: FontWeight.bold)),

            Padding(
              padding: EdgeInsets.all(0),
              child: Image.asset(Images.boardingBody3),
            ),
          ],
        ),
      ),
    );
  }
}
