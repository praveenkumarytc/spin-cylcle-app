import 'package:flutter/material.dart';
import 'package:service/select_services/membership.dart';
import 'package:service/select_services/mens.dart';
import '../custome_widgets/appbar.dart';
import '../screen/active.dart';
import '../screen/cancelled.dart';
import '../screen/complete.dart';

class RateCard extends StatefulWidget {
  const RateCard({super.key});

  @override
  State<RateCard> createState() => _RateCardState();
}

class _RateCardState extends State<RateCard> {
  String _selectedOption = 'All';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: 'Rate Card'),
      body: Column(
        children: [
          SizedBox(height: 40),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Membership()),
              );
            },
            child: Text('MerberShip'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Membership()),
              );
            },
            child: Text('MerberShip'),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    width: 400,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Search',
                        suffixIcon: Icon(Icons.search),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 20,
                        ), // Adjust padding inside the TextField
                      ),
                    ),
                  ),
                ),
                PopupMenuButton<String>(
                  onSelected: (value) {
                    _onOptionSelected(value);
                  },
                  itemBuilder: (BuildContext context) {
                    return [
                      PopupMenuItem<String>(value: 'All', child: Text('Mens')),
                      PopupMenuItem<String>(
                        value: 'Active Orders',
                        child: Text(
                          'Ladies Wear',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      PopupMenuItem<String>(
                        value: 'Completed Orders',
                        child: Text(
                          'Saree',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      PopupMenuItem<String>(
                        value: 'Cancelled Orders',
                        child: Text(
                          'Shoes -Cleaning & Conditioning',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      PopupMenuItem<String>(
                        value: 'Cancelled Orders',
                        child: Text(
                          'Accessories',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      PopupMenuItem<String>(
                        value: 'Cancelled Orders',
                        child: Text(
                          'Carpet and Curtain',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      PopupMenuItem<String>(
                        value: 'Cancelled Orders',
                        child: Text(
                          'Home Linen',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      PopupMenuItem<String>(
                        value: 'Cancelled Orders',
                        child: Text(
                          'Regular Wash and Iron/Wash & Fold',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      PopupMenuItem<String>(
                        value: 'Cancelled Orders',
                        child: Text(
                          'Repairs',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ];
                  },
                  child: Image.asset('assets/images/stash_filter-light.png'),
                ),
              ],
            ),
          ),
          Expanded(child: Center(child: _getBodyContent(_selectedOption))),
        ],
      ),
    );
  }

  void _onOptionSelected(String value) {
    setState(() {
      _selectedOption = value;
    });
  }

  Widget _getBodyContent(String selectedOption) {
    switch (selectedOption) {
      case 'All':
        return Mens();
      case 'Completed Orders':
        return Complete();
      case 'Cancelled Orders':
        return Cancelled();
      case 'All':
      default:
        return Mens();
    }
  }
}
