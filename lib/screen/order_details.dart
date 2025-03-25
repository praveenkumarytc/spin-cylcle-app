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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Product ID: $productID'),
          Text('Name: $name'),
          Text('Description: $description'),
          Text('Price: $price'),
          Text('Category: $category'),
        ],
      ),
    );
  }
}

