import 'package:flutter/material.dart';
import 'package:service/custome_widgets/men_widget.dart'; // Make sure to import it

class Mens extends StatelessWidget {
  const Mens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Column(
                children: [
                  MenWidget(
                    T1: 'Men/ shirt pant',
                    T2: 'Shirt/Pant',
                    T3: 'Premium Laundry',
                    T4: '₹85/Piece',
                    T5: 'Dry Clean',
                    T6: '₹85/Piece',
                    T7: 'Premium Stream',
                    T8: '₹30/Piece',
                    T9: 'Luxe Service',
                    T10: '₹149/Piece',
                  ),
                  MenWidget(
                    T1: 'T-shirt',
                    T2: 'Shirt/Pant',
                    T3: 'Premium Laundry',
                    T4: '₹85/Piece',
                    T5: 'Dry Clean',
                    T6: '₹85/Piece',
                    T7: 'Premium Stream',
                    T8: '₹30/Piece',
                    T9: 'Luxe Service',
                    T10: '₹149/Piece',
                  ),
                  MenWidget(
                    T1: 'Shirt Silk',
                    T2: 'Shirt/Pant',
                    T3: 'Premium Laundry',
                    T4: '₹85/Piece',
                    T5: 'Dry Clean',
                    T6: '₹85/Piece',
                    T7: 'Premium Stream',
                    T8: '₹30/Piece',
                    T9: 'Luxe Service',
                    T10: '₹149/Piece',
                  ),
                  MenWidget(
                    T1: 'Men/ shirt pant',
                    T2: 'Shirt/Pant',
                    T3: 'Premium Laundry',
                    T4: '₹85/Piece',
                    T5: 'Dry Clean',
                    T6: '₹85/Piece',
                    T7: 'Premium Stream',
                    T8: '₹30/Piece',
                    T9: 'Luxe Service',
                    T10: '₹149/Piece',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
