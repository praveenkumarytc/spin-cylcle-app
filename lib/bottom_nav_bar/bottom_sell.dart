import 'package:flutter/material.dart';
import 'package:service/screen/my_orders.dart';

class BottomSell extends StatelessWidget {
  const BottomSell({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ElevatedButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Orders()));
    }, child: Text('Order')),);
  }
}