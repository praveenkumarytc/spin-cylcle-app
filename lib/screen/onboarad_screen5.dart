import 'package:flutter/material.dart';
import 'package:service/screen/login1.dart';
import 'package:service/utils/image.dart';

class OnboardingScreen5 extends StatefulWidget {
  const OnboardingScreen5({super.key});

  @override
  State<OnboardingScreen5> createState() => _OnboardingScreen5State();
}

class _OnboardingScreen5State extends State<OnboardingScreen5> {
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
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage1()),
                        );
                      },
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
                ),
              ],
            ),
            Text("Laundry Made", style: TextStyle(fontSize: 24)),
            Text("Effort Less!", style: TextStyle(fontSize: 24)),

            Text(
              "schedule, relax and let us handle the ",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text("cleaning", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 30),
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width * .80,

              child: Image.asset(fit: BoxFit.cover, Images.boardingBody1),
            ),
          ],
        ),
      ),
    );
  }
}
