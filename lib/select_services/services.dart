import 'package:flutter/material.dart';
import 'package:service/custome_widgets/appbar.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: 'Select Services'),
      body: Column(
        children: [
          SizedBox(height: 40),
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Image.asset('assets/images/Dry.png'),
                    Text('Dry Clean'),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Image.asset('assets/images/Premium.png'),
                    Text('Dry Clean'),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Image.asset('assets/images/Dry.png'),
                    Text('Dry Clean'),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 40),

          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Image.asset('assets/images/Saree Roll Press.png'),
                    Text('Dry Clean'),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Image.asset('assets/images/Cloth Repairs.png'),
                    Text('Dry Clean'),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/Shoe Cleaning & Conditioning.png',
                    ),
                    Text('Dry Clean'),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 40),

          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Image.asset('assets/images/Cloth Repairs.png'),
                    Text('Dry Clean'),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Image.asset('assets/images/Premium Steam Press (1).png'),
                    Text('Dry Clean'),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Image.asset('assets/images/Regular - Wash & Fold.png'),
                    Text('Dry Clean'),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 40),

          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Image.asset('assets/images/Cloth Repairs.png'),
                    Text('Dry Clean'),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/Carpet Cleaning & Sanitizing (1).png',
                    ),
                    Text('Dry Clean'),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/Curtain Cleaning & Sanitizing (1).png',
                    ),
                    Text('Dry Clean'),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 40),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Note:* Do go ahead and place the pickup requested by just choosing the service(s) you require. You can mention the required service for each individual item to the executive when they come to pick-up your items.',
              style: TextStyle(color: Color(0xFF6E3667)),
            ),
          ),
          SizedBox(height: 40),

          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightGreen,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              fixedSize: Size(200, 50),
            ),
            child: Text(
              'Lets Order',
              style: TextStyle(color: Colors.black), // Text color is black
            ),
          )
        ],
      ),
    );
  }
}
