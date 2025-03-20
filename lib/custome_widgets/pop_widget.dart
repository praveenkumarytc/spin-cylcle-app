import 'package:flutter/material.dart';

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
    return Card(
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
                      Text(widget.Day),
                      Text(widget.Time),
                    ],
                  ),
                ),
                Container(
                  color: Colors.purpleAccent,
                  width: 100,
                  height: 50,
                  alignment: Alignment.center,
                  child: Text(widget.Status, style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
            Divider(),
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
                    Text(widget.Date),
                    Row(children: [Icon(Icons.access_time), Text(widget.Clock)]),
                  ],
                ),
                SizedBox(width: 10),
                Image.asset(
                  'assets/images/Group 33317.png',
                  width: 40,
                  height: 40,
                ),
                Column(
                  children: [
                    Text(widget.Date),
                    Row(children: [Icon(Icons.access_time), Text(widget.Clock)]),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// OrderCard Widget
class OrderCard extends StatefulWidget {
  const OrderCard({
    super.key,
    required this.OrderID,
    required this.Date,
    required this.Time,
    required this.Status,
    required this.Location,
  });

  final String OrderID;
  final String Date;
  final String Time;
  final String Status;
  final String Location;

  @override
  State<OrderCard> createState() => _OrderCardState();
}

class _OrderCardState extends State<OrderCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
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
                      Text(widget.Date),
                      Text(widget.Time),
                    ],
                  ),
                ),
                Container(
                  color: Colors.purpleAccent,
                  width: 100,
                  height: 50,
                  alignment: Alignment.center,
                  child: Text(widget.Status, style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
            Divider(),
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
                        Text(widget.Location),
                        Row(children: [Icon(Icons.access_time), Text(widget.Time)]),
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
                        Text(widget.Location),
                        Row(children: [Icon(Icons.access_time), Text(widget.Time)]),
                      ],
                    ),
                  ],
                ),

              ],
            ),

          ],
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
    required this.Description,
    required this.Price,
    required this.Category,
  });

  final String ProductID;
  final String Name;
  final String Description;
  final String Price;
  final String Category;

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset('assets/images/product_image.png', width: 50, height: 50),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.Name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(widget.Description),
                    ],
                  ),
                ),
                Text(widget.Price, style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            Divider(),
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
                        Row(children: [Icon(Icons.access_time), Text(widget.Category)]),
                      ],
                    ),
                  ],
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
                        Text(widget.Price),
                        Row(children: [Icon(Icons.access_time), Text(widget.Category)]),
                      ],
                    ),
                  ],
                ),

              ],
            ),

          ],
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
    required this.Priority,
    required this.AssignedTo,
  });

  final String TaskID;
  final String Title;
  final String DueDate;
  final String Priority;
  final String AssignedTo;

  @override
  State<TaskCard> createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Icon(Icons.assignment, size: 50),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.Title,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('Due: ${widget.DueDate}'),
                    ],
                  ),
                ),
                Container(
                  color: Color(0xFFE3FFBB),
                  width: 100,
                  height: 50,
                  alignment: Alignment.center,
                  child: Text(
                    widget.Priority,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            Divider(),
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
                        Text(widget.Priority),
                        Row(children: [Icon(Icons.access_time), Text(widget.AssignedTo)]),
                      ],
                    ),
                  ],
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
                        Text(widget.Priority),
                        Row(children: [Icon(Icons.access_time), Text(widget.AssignedTo)]),
                      ],
                    ),
                  ],
                ),

              ],
            ),

          ],
        ),
      ),
    );
  }
}

// Main App Example
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text('Custom Widgets Example')),
      body: ListView(
        children: [
         //Completed
          MenuButton(
            ID: '123456',
            Day: 'Monday, 9 Feb 2025',
            Time: '05:40 PM',
            Status: 'Pending',
            Date: '23 Feb, 2025',
            Clock: '20:21:00',
          ),
          //Active
          OrderCard(
            OrderID: '12345',
            Date: '23 Feb 2025',
            Time: '10:00 AM',
            Status: 'Completed',
            Location: 'New York',
          ),

          ProductCard(
            ProductID: 'P123',
            Name: 'Smartphone',
            Description: 'Latest model with great features',
            Price: '\$699',
            Category: 'Electronics',
          ),
          //Completed
          TaskCard(
            TaskID: 'T1001',
            Title: 'Complete Project',
            DueDate: '25 Feb 2025',
            Priority: 'High',
            AssignedTo: 'John Doe',
          ),
        ],
      ),
    ),
  ));
}
