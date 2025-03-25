import 'package:flutter/material.dart';
import 'package:service/custome_widgets/appbar.dart';
import 'package:service/utils/colors.dart';

class NoOrders extends StatelessWidget {
  const NoOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: 'No Orders'),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 120),
              child: Image.asset('assets/images/17727 [Converted] 1.png'),
            ),
          ),
          SizedBox(height: 40),
          Text(
            'No Orders Yet!',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.only(left: 70, right: 70),
            child: Text(
              'Your first laundry order is waiting! Start accepting orders and keep things fresh & clean.',
              maxLines: 3,
            ),
          ),
          SizedBox(height: 40),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Mycolors.greenColor,
              maximumSize: Size(500, 70),
            ),

            child: Text(
              'Request an order!',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
