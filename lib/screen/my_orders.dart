import 'package:flutter/material.dart';
import 'package:service/custome_widgets/appbar.dart';
import 'package:service/screen/active.dart';
import 'package:service/screen/all.dart';
import 'package:service/screen/cancelled.dart';
import 'package:service/screen/complete.dart';

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  String _selectedOption = 'Select an Option';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: 'Help & Support',
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              _onOptionSelected(value);
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem<String>(
                  value: 'All',
                  child: Text('All'),
                ),
                PopupMenuItem<String>(
                  value: 'Active Orders',
                  child: Text('Active Orders'),
                ),
                PopupMenuItem<String>(
                  value: 'Completed Orders',
                  child: Text('Completed Orders'),
                ),
                PopupMenuItem<String>(
                  value: 'Cancelled Orders',
                  child: Text('Cancelled Orders'),
                ),
              ];
            },
            icon: Image.asset('assets/images/icon_appbar.png'),
          ),
        ],
      ),
      body: Center(
        child: _getBodyContent(_selectedOption),
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
        return All();
      case 'Active Orders':
        return Active();
      case 'Completed Orders':
        return Complete();
      case 'Cancelled Orders':
        return Cancelled();
      default:
        return All();
    }
  }
}
