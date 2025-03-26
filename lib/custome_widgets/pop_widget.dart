import 'package:flutter/material.dart';
import 'package:service/custome_widgets/dotted.dart';

import '../screen/order_details.dart';

class MenuButton extends StatefulWidget {
  const MenuButton({
    super.key,
    required this.ID,
    required this.Day,
    required this.Time,
    required this.Status,
    required this.Date,
    required this.Clock,
  });

  final String ID;
  final String Day;
  final String Time;
  final String Status;
  final String Date;
  final String Clock;

  @override
  State<MenuButton> createState() => _MenuButtonState();
}
class _MenuButtonState extends State<MenuButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder:
                (context) => OrderDetails(
              productID: widget.ID,
              name: widget.Status,
              description: widget.Date,
              price: widget.Time,
              category: widget.Date,
            ),
          ),
        );
      },

      child:  Card(
        color: Colors.white,
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset('assets/images/solar.png', width: 50, height: 50),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.ID,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.Day,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.Time,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Color(0xFFF1D3FF),
                    width: 80,
                    height: 30,
                    alignment: Alignment.center,
                    child: Text(
                      widget.Status,
                      style: TextStyle(color: Colors.purple),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Dotted(num: 12),
              SizedBox(
                height: 10,
              ),

              Row(
                children: [
                  Image.asset(
                    'assets/images/Group 33317.png',
                    width: 40,
                    height: 40,
                  ),
                  Column(
                    children: [
                      Text(widget.Date, style: TextStyle(color: Colors.grey)),
                      Row(
                        children: [
                          Icon(Icons.access_time),
                          Text(
                            widget.Clock,
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 130),
                  Image.asset(
                    'assets/images/Group 33317.png',
                    width: 40,
                    height: 40,
                  ),
                  Column(
                    children: [
                      Text(widget.Date, style: TextStyle(color: Colors.grey)),
                      Row(
                        children: [
                          Icon(Icons.access_time),
                          Text(
                            widget.Clock,
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
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


// OrderCard Widget
class OrderWidget extends StatefulWidget {
  const OrderWidget({
    super.key,
    required this.OrderID,
    required this.Date,
    required this.Time,
    required this.Status,
    required this.Location,
    required this.Clock, // Added Clock field
  });

  final String OrderID;
  final String Date;
  final String Time;
  final String Status;
  final String Location;
  final String Clock; // Added Clock field

  @override
  State<OrderWidget> createState() => _OrderWidgetState();
}
class _OrderWidgetState extends State<OrderWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder:
                (context) => OrderDetails(
              productID: widget.OrderID,
              name: widget.Date,
              description: widget.Time,
              price: widget.Status,
              category: widget.Clock,
            ),
          ),
        );
      },
      child: Card(
          color: Colors.white,
          elevation: 4,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset('assets/images/solar.png', width: 50, height: 50),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.OrderID,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            widget.Date,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            widget.Time,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Color(0xFFF1D3FF),
                      width: 80,
                      height: 30,
                      alignment: Alignment.center,
                      child: Text(
                        widget.Status,
                        style: TextStyle(color: Colors.purple),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Dotted(num: 12),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/images/Group 33317.png',
                      width: 40,
                      height: 40,
                    ),
                    Column(
                      children: [
                        Text(widget.Location, style: TextStyle(color: Colors.grey)),
                        Row(
                          children: [
                            Icon(Icons.access_time),
                            Text(
                              widget.Clock,
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        // Added the Clock field below the time
                      ],
                    ),
                    SizedBox(width: 130),
                    Image.asset(
                      'assets/images/Group 33317.png',
                      width: 40,
                      height: 40,
                    ),
                    Column(
                      children: [
                        Text(widget.Location, style: TextStyle(color: Colors.grey)),
                        Row(
                          children: [
                            Icon(Icons.access_time),
                            Text(
                              widget.Clock,
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        // Added the Clock field below the time
                      ],
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


// ProductCard Widget
class ProductCard extends StatefulWidget {
  const ProductCard({
    super.key,
    required this.ProductID,
    required this.Name,
    required this.Time,
    required this.Description,
    required this.Price,
    required this.Category,
  });

  final String ProductID;
  final String Name;
  final String Time;
  final String Description;
  final String Price;
  final String Category;

  @override
  State<ProductCard> createState() => _ProductCardState();
}
class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder:
                (context) => OrderDetails(
                  productID: widget.ProductID,
                  name: widget.Name,
                  description: widget.Description,
                  price: widget.Price,
                  category: widget.Category,
                ),
          ),
        );
      },
      child: Card(
        color: Colors.white,
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset('assets/images/solar.png', width: 50, height: 50),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.ProductID,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.Name,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.Time,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Color(0xFFE3FFBB),
                    width: 80,
                    height: 30,
                    alignment: Alignment.center,
                    child: Text(
                      widget.Description,
                      style: TextStyle(color: Colors.green),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Dotted(num: 12),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/Group 33317.png',
                        width: 40,
                        height: 40,
                      ),
                      Column(
                        children: [
                          Text(widget.Price),
                          Row(
                            children: [
                              Icon(Icons.access_time),
                              Text(widget.Category),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/Group 33317.png',
                        width: 40,
                        height: 40,
                      ),
                      Column(
                        children: [
                          Text(widget.Price),
                          Row(
                            children: [
                              Icon(Icons.access_time),
                              Text(widget.Category),
                            ],
                          ),
                        ],
                      ),
                    ],
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


// TaskCard Widget
class TaskCard extends StatefulWidget {
  const TaskCard({
    super.key,
    required this.TaskID,
    required this.Title,
    required this.DueDate,
    required this.Time,
    required this.Priority,
    required this.AssignedTo,
    required this.Clock,
  });

  final String TaskID;
  final String Title;
  final String DueDate;
  final String Time;
  final String Priority;
  final String AssignedTo;
  final String Clock;

  @override
  State<TaskCard> createState() => _TaskCardUpdatedState();
}
class _TaskCardUpdatedState extends State<TaskCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder:
                (context) => OrderDetails(
              productID: widget.TaskID,
              name: widget.Title,
              description: widget.DueDate,
              price: widget.Time,
              category: widget.Priority,
            ),
          ),
        );
      },
      child: Card(
        color: Colors.white,
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset('assets/images/solar.png', width: 50, height: 50),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.Title,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.DueDate,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.Time,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Color(0xFFFFD0D0),
                    width: 80,
                    height: 30,
                    alignment: Alignment.center,
                    child: Text(
                      widget.Priority,
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Dotted(num: 12),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/images/Group 33317.png',
                    width: 40,
                    height: 40,
                  ),
                  Column(
                    children: [
                      Text(
                        widget.AssignedTo,
                        style: TextStyle(color: Colors.grey),
                      ),
                      Row(
                        children: [
                          Icon(Icons.access_time),
                          Text(
                            widget.Clock,
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 130),
                  Image.asset(
                    'assets/images/Group 33317.png',
                    width: 40,
                    height: 40,
                  ),
                  Column(
                    children: [
                      Text(
                        widget.AssignedTo,
                        style: TextStyle(color: Colors.grey),
                      ),
                      Row(
                        children: [
                          Icon(Icons.access_time),
                          Text(
                            widget.Clock,
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
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


// Main App Example
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Custom Widgets Example')),
        body: ListView(
          children: [
            MenuButton(
              ID: 'OrderID #123456',
              Day: 'Monday, 24 Feb 2025',
              Time: '05:04 pm',
              Status: 'Pending',
              Date: '9 Feb 2025',
              Clock: '20-21:59',
            ),
            OrderWidget(
              OrderID: 'OrderID #123456',
              Date: 'Monday, 24 Feb 2025',
              Time: '05:04 pm',
              Status: 'Pending',
              Location: '9 Feb 2025',
              Clock: '21:20:33',
            ),
            ProductCard(
              ProductID: 'OrderID #123456',
              Name: 'Monday, 24 Feb 2025',
              Time: '05:04 pm',
              Description: 'Pending',
              Price: '9 Feb 2025',
              Category: '21:20:33',
            ),
            TaskCard(
              TaskID: 'OrderID #123456',
              Title: 'Monday, 24 Feb 2025',
              DueDate: 'Monday',
              Time: '05:04 pm',
              Priority: 'Pending',
              AssignedTo: '9 Feb 2025',
              Clock: '21:20:33',
            ),
          ],
        ),
      ),
    ),
  );
}
