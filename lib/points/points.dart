import 'package:flutter/material.dart';
import 'package:service/custome_widgets/point_card_widget.dart';
import 'package:service/custome_widgets/point_card_widget1.dart';
import 'package:service/utils/colors.dart';

class Points extends StatefulWidget {
  const Points({super.key});

  @override
  _PointsState createState() => _PointsState();
}

class _PointsState extends State<Points> {
  List<Widget> dynamicContent = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Points'), backgroundColor: Colors.purple),
      body: Column(
        children: [
          Container(
            height: 300,
            decoration: BoxDecoration(
              color: Color(0xFFF6E2FF),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30),
                bottomLeft: Radius.circular(30),
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 140, top: 70),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/images/coins.png'),
                          Text(
                            '80',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 50,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Text('Withdrawable Points'),
                SizedBox(height: 30),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            dynamicContent = [
                              Text(
                                'Enter Points',
                                style: TextStyle(fontSize: 20),
                              ),
                              SizedBox(height: 20),
                              Text(
                                'Convert point to wallet money!',
                                style: TextStyle(color: Color(0xFF6E3667)),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset('assets/images/Animation.png'),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 40),
                                      child: Container(
                                        width: 200,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFF7F5FA),
                                          border: Border.all(
                                            color: Color(0xFFDBDBDB),
                                            width: 2,
                                          ),
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                        ),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              'assets/images/formkit_rupee.png',
                                            ),
                                            Text('Ex : ₹300'),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 350,
                                  padding: EdgeInsets.all(10),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Note:',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Text(
                                          ' • Only earning points can be converted to wallet money',
                                        ),
                                        SizedBox(height: 5),
                                        Text(' • 1.0 Point remains ₹ 1.00'),
                                        SizedBox(height: 5),
                                        Text(
                                          ' • Once you convert the point into money, it won’t go back to points.',
                                        ),
                                        SizedBox(height: 5),
                                        Text(
                                          ' • Points can be used to get bonus money.',
                                        ),
                                        SizedBox(height: 80),
                                        Center(
                                          child: ElevatedButton(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  Mycolors.greenColor,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              minimumSize: Size(250, 50),
                                            ),
                                            child: Text(
                                              'Convert Points',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ];
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: Row(
                              children: [
                                Image.asset('assets/images/Group.png'),
                                SizedBox(width: 8),
                                Text('Convert to money'),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            dynamicContent = [
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Card(
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Image.asset(
                                              'assets/images/Group.png',
                                            ),
                                            Text('Order Place'),
                                            Text('October 21. 04:20 PM'),
                                          ],
                                        ),
                                        Spacer(),
                                        Column(
                                          children: [
                                            Text('1.0'),
                                            Text('Points'),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ];
                          });
                        },
                        child: Container(
                          height: 25,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Row(
                              children: [
                                Image.asset('assets/images/Group.png'),
                                SizedBox(width: 4),
                                Text('Convert to gift card'),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            dynamicContent = [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Point Converted History',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 40),
                                  Image.asset('assets/images/search.png'),
                                  Text(
                                    'No Result found',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  SizedBox(height: 40),

                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.lightGreen,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      minimumSize: Size(200, 50),
                                    ),

                                    child: Text(
                                      'Lets Order',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ), // Text color is black
                                    ),
                                  ),
                                ],
                              ),
                            ];
                          });
                        },
                        child: Container(
                          height: 25,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Row(
                              children: [
                                Image.asset('assets/images/Group.png'),
                                SizedBox(width: 4),
                                Text('Converted'),
                              ],
                            ),
                          ),
                        ),
                      ),







                      SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            dynamicContent = [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'My Referrals',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 40),
                                  Image.asset('assets/images/search.png'),
                                  Text(
                                    'No Result found',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  SizedBox(height: 40),

                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.lightGreen,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      minimumSize: Size(200, 50),
                                    ),

                                    child: Text(
                                      'Lets Order',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ), // Text color is black
                                    ),
                                  ),
                                ],
                              ),
                            ];
                          });
                        },
                        child: Container(
                          height: 25,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Row(
                              children: [
                                Image.asset('assets/images/Group.png'),
                                SizedBox(width: 4),
                                Text('My referrals'),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            dynamicContent = [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          'Total Point Converted:',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          'Current Wallet Balance:',
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Column(
                                      children: [
                                        Text(
                                          '₹200 Points',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          '₹200',
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: PointCardWidget1(
                                  ID: '#123456',
                                  Bonus: '+₹100',
                                  Date: '10 Feb 2025',
                                  Status: '✓ Successful Converted',
                                  Points: '-50 Points',
                                ),
                              ),
                            ];
                          });
                        },
                        child: Container(
                          height: 25,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Row(
                              children: [
                                Image.asset('assets/images/Group.png'),
                                SizedBox(width: 4),
                                Text('Converted+'),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            dynamicContent = [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          'My Referrals',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          'Total Earned',
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Column(
                                      children: [
                                        Text(
                                          '04',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          '₹150',
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              PointCardWidget(
                                Profile: 'assets/images/Vector.png',
                                Name: 'AbhishekYadav',
                                No: '123456789',
                                Date: '27 Feb 2025',
                                Status: '✓Completed',
                                Points: '₹50 Earned',
                              ),
                              PointCardWidget(
                                Profile: 'assets/images/Vector.png',
                                Name: 'AbhiYadav',
                                No: '999999999',
                                Date: '9 Sep 2025',
                                Status: '✓Completed',
                                Points: '₹510 Earned',
                              ),
                              PointCardWidget(
                                Profile: 'assets/images/Vector.png',
                                Name: 'Yadav',
                                No: '123456789',
                                Date: '9 Feb 2025',
                                Status: '✓Completed',
                                Points: '₹99 Earned',
                              ),
                            ];
                          });
                        },
                        child: Container(
                          height: 25,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Row(
                              children: [
                                Image.asset('assets/images/Group.png'),
                                SizedBox(width: 4),
                                Text('Referred+'),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: dynamicContent,
              ),
            ),
          ),
        ],
      ),
    );
  }
}


