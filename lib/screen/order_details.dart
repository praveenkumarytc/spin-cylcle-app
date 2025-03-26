import 'package:flutter/material.dart';
import 'package:service/custome_widgets/appbar.dart';

class OrderDetails extends StatelessWidget {
  final String productID;
  final String name;
  final String description;
  final String price;
  final String category;

  const OrderDetails({
    super.key,
    required this.productID,
    required this.name,
    required this.description,
    required this.price,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: 'Order Details'),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text('Product ID: $productID',style: TextStyle(fontWeight: FontWeight.bold),),
                Spacer(),
                Text('Status: $name'),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Container(
                  width: 9,
                  height: 9,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                SizedBox(width: 4,),
                Text('Description: $description'),
                Text('Price: $price'),
                Text('Category: $category'),
              ],
            ),
            SizedBox(height: 20),

            Text('Customer Address',style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(height: 10),

            Text('Jankipuram Ext Lucknow UP '),
            SizedBox(height: 20),


            Divider(),
            SizedBox(height: 20),


            Text('Selected Services',style: TextStyle(fontWeight: FontWeight.bold),),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Image.asset('assets/images/Saree Roll Press.png'),
                      Text('Saree Roll Press'),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Image.asset('assets/images/abc.png'),
                      Text('Suitcase & Bag Cleaning'),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/Shoe Cleaning & Conditioning.png',
                      ),
                      Text('Shoe Cleaning & Conditioning'),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Image.asset('assets/images/Cloth.png'),
                      Text('Bag/Suitcase/Purse/Belt/Leather/Cloth Repairs',
                      maxLines: 2,),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Image.asset('assets/images/Premium Steam Press (1).png'),
                      Text('Premium Steam Press'),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
