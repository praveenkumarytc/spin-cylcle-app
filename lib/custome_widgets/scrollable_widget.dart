import 'package:flutter/material.dart';
import 'package:service/custome_widgets/dotted.dart';

class ScrollableWidget extends StatelessWidget {
  const ScrollableWidget({
    super.key,
    required this.Images,
    required this.Texts,
    required this.Price,
    required this.Month,
    required this.T1,
    required this.T2,
    required this.T3,
    required this.T4,
    required this.T5,
    required this.Button,
  });

  final String Images;
  final String Texts;
  final String Price;
  final String Month;
  final String T1;
  final String T2;
  final String T3;
  final String T4;
  final String T5;
  final String Button;


  @override

  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 500,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          SizedBox(height: 20),
          Image.asset(Images),
          Text(
            Texts,
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Text(
            Price,
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Text(Month, style: TextStyle(color: Colors.grey)),
          SizedBox(height: 20),

          //Dotted
          Dotted(num: 15),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(' • $T1'),
                SizedBox(height: 20),
                Text(' • $T2'),
                SizedBox(height: 20),
                Text(' • $T3'),
                SizedBox(height: 40),
                Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF8EC63F),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      fixedSize: Size(200, 50),
                    ),
                    child: Text(Button, style: TextStyle(color: Colors.black)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ScrollableWidgett extends StatelessWidget {
  const ScrollableWidgett({
    super.key,
    required this.Images,
    required this.Texts,
    required this.Price,
    required this.Month,
    required this.T1,
    required this.T2,
    required this.T3,
    required this.T4,
    required this.T5,
    required this.Button,
  });

  final String Images;
  final String Texts;
  final String Price;
  final String Month;
  final String T1;
  final String T2;
  final String T3;
  final String T4;
  final String T5;
  final String Button;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 600,
      decoration: BoxDecoration(
        color: Colors.white,
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            Colors.green,
            Colors.greenAccent,
          ],
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          SizedBox(height: 20),
          Image.asset(Images),
          Text(
            Texts,
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Text(
            Price,
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Text(Month, style: TextStyle(color: Colors.grey)),
          SizedBox(height: 20),
          Dotted(num: 15),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(' • $T1'),
                SizedBox(height: 20),
                Text(' • $T2'),
                SizedBox(height: 20),
                Text(' • $T3'),
                SizedBox(height: 40),
                Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF8EC63F),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      fixedSize: Size(200, 50),
                    ),
                    child: Text(Button, style: TextStyle(color: Colors.black)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ScrollableWidgets extends StatelessWidget {
  const ScrollableWidgets({
    super.key,
    required this.Images,
    required this.Texts,
    required this.Price,
    required this.Month,
    required this.T1,
    required this.T2,
    required this.T3,
    required this.T4,
    required this.T5,
    required this.Button,
  });

  final String Images;
  final String Texts;
  final String Price;
  final String Month;
  final String T1;
  final String T2;
  final String T3;
  final String T4;
  final String T5;
  final String Button;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 600,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            Colors.red,
            Colors.orange,
          ],
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          SizedBox(height: 20),
          Image.asset(Images),
          Text(
            Texts,
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Text(
            Price,
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Text(Month, style: TextStyle(color: Colors.grey)),
          SizedBox(height: 20),
          Dotted(num: 15),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(' • $T1'),
                SizedBox(height: 20),
                Text(' • $T2'),
                SizedBox(height: 20),
                Text(' • $T3'),
                SizedBox(height: 20),
                Text(' • $T4'),
                SizedBox(height: 20),
                Text(' • $T5'),
                SizedBox(height: 40),
                Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      fixedSize: Size(200, 50),
                    ),
                    child: Text(Button, style: TextStyle(color: Colors.black)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ScrollableWidgetss extends StatelessWidget {
  const ScrollableWidgetss({
    super.key,
    required this.Images,
    required this.Texts,
    required this.Price,
    required this.Month,
    required this.T1,
    required this.T2,
    required this.T3,
    required this.T4,
    required this.T5,
    required this.Button,
  });

  final String Images;
  final String Texts;
  final String Price;
  final String Month;
  final String T1;
  final String T2;
  final String T3;
  final String T4;
  final String T5;
  final String Button;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 570,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomLeft, // Start point of the gradient
          end: Alignment.topRight, // End point of the gradient
          colors: [
            Colors.blueAccent, // First color of the gradient
            Colors.purple, // Second color of the gradient
          ],
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          SizedBox(height: 20),
          Image.asset(Images),
          Text(
            Texts,
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Text(
            Price,
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Text(Month, style: TextStyle(color: Colors.grey)),
          SizedBox(height: 20),
          Dotted(num: 15),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(' • $T1'),
                SizedBox(height: 20),
                Text(' • $T2'),
                SizedBox(height: 20),
                Text(' • $T3'),
                SizedBox(height: 20),
                Text(' • $T4'),
                SizedBox(height: 20),
                Text(' • $T5'),
                SizedBox(height: 40),
                Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      fixedSize: Size(200, 50),
                    ),
                    child: Text(Button, style: TextStyle(color: Colors.black)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Scrol extends StatelessWidget {
  const Scrol({
    super.key,
    required this.Images,
    required this.T1,
    required this.T2,
    required this.Button,
  });

  final String Images;
  final String T1;
  final String T2;
  final String Button;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 520,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          SizedBox(height: 20),
          Image.asset(Images),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Center(child: Text('$T1',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),maxLines: 2,)),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Center(child: Text('$T2',style: TextStyle(fontWeight: FontWeight.bold),)),
                SizedBox(height: 20),
                Dotted(num: 15),
                SizedBox(height: 20),
                Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF8EC63F),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      fixedSize: Size(200, 50),
                    ),
                    child: Text(Button, style: TextStyle(color: Colors.black)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
