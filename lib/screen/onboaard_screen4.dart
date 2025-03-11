import 'package:flutter/material.dart';
import 'package:service/utils/image.dart';

class OnboardingScreen4 extends StatefulWidget {
  const OnboardingScreen4({super.key});

  @override
  State<OnboardingScreen4> createState() => _OnboardingScreen4State();
}

class _OnboardingScreen4State extends State<OnboardingScreen4> {
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
            Text("From Your Door", style: TextStyle(fontSize: 24)),
            Text("To Your Drawer!", style: TextStyle(fontSize: 24)),

            Text(
              "Lanudry service that fit your ",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              "Schedule,not the other way around ",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 30),
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width * .80,

              child: Image.asset(fit: BoxFit.cover, Images.boardingBody4),
            ),
          ],
        ),
      ),
    );
  }
}
