import 'package:flutter/material.dart';

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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        'assets/images/Animation.png',
                                      ),
                                      Text(
                                        'Note:',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text('Ex : ₹300'),
                                      //check
                                      Container(
                                        width: 100,
                                        height: 50,
                                        color: Colors.red,
                                        decoration: BoxDecoration(),
                                        child: Row(
                                          children: [
                                            Text(
                                              'Note:',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text('Ex : ₹300'),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
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
                                        'Make sure the points entered are valid.',
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        'Points will be converted to wallet money based on current rates.',
                                      ),
                                    ],
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
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                              ),
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

                                Card(
                                  child: Row(
                                    children: [
                                      Column(
                                        children: [
                                          Image.asset(
                                            'assets/images/Group.png',
                                          ),
                                          Text('Order Place'),
                                          Text('October 21. 04:20 PM'),
                                        ],
                                      ),
                                      Column(
                                        children: [Text('1.0'), Text('Points')],
                                      ),
                                    ],
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
                              padding: const EdgeInsets.only(
                                left: 10,
                                right: 10,
                              ),
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
                                Text('Point Converted History'),
                                Image.asset('assets/images/search.png'),
                                Text('No Result found'),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.lightGreen,
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                                  ),
                                  child: Text(
                                    'Lets Order',
                                    style: TextStyle(color: Colors.black), // Text color is black
                                  ),
                                )

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
                              padding: const EdgeInsets.only(
                                left: 10,
                                right: 10,
                              ),
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
                                Row(
                                    children: [
                                      Text('My Referrals'),
                                    ],
                                  ),
                                Image.asset('assets/images/search.png'),
                                SizedBox(height: 20),
                                Text('No Result found'),
                                SizedBox(height: 20),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.lightGreen,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                                  ),
                                  child: Text(
                                    'Lets Order',
                                    style: TextStyle(color: Colors.black), // Text color is black
                                  ),
                                )

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
                              padding: const EdgeInsets.only(
                                left: 10,
                                right: 10,
                              ),
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
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Text('Total Points Converted:'),
                                        Text('Current Wallet balance:')
                                      ],
                                    ),
                                    Spacer(),
                                    Column(
                                      children: [
                                        Text('200 points'),
                                        Text('₹200')

                                      ],
                                    ),
                                  ],
                                ),
                                Card(
                                  child: Row(
                                    children: [
                                      Column(
                                        children: [
                                          Text('10 Feb 2025'),
                                          Text('#123456'),
                                          Text('✓Successful Converted')

                                        ],
                                      ),
                                      Spacer(),
                                      Column(
                                        children: [
                                          Text('+₹100'),
                                          Text('-50 Points')
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Card(
                                  child: Row(
                                    children: [
                                      Column(
                                        children: [
                                          Text('10 Feb 2025'),
                                          Text('#123456'),
                                          Text('✓Successful Converted')

                                        ],
                                      ),
                                      Spacer(),
                                      Column(
                                        children: [
                                          Text('+₹100'),
                                          Text('-50 Points')
                                        ],
                                      )
                                    ],
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
                              padding: const EdgeInsets.only(
                                left: 10,
                                right: 10,
                              ),
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
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Text('My Referrals'),
                                        Text('Total Earned')
                                      ],
                                    ),
                                    Spacer(),
                                    Column(
                                      children: [
                                        Text('04'),
                                        Text('₹150')

                                      ],
                                    ),
                                  ],
                                ),
                                Card(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 10,right: 10),
                                    child: Row(
                                      children: [
                                        Image.asset('assets/images/coin1.png'),
                                        Column(
                                          children: [
                                            Text('Abhishek Yadav'),
                                            Text('999999999 | 10Feb 2025')

                                          ],
                                        ),
                                        Spacer(),
                                        Column(
                                          children: [
                                            Text('✓ Completed '),
                                            Text('₹ 50 Earned')
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Card(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 10,right: 10),
                                    child: Row(
                                      children: [
                                        Image.asset('assets/images/coin1.png'),
                                        Column(
                                          children: [
                                            Text('Abhishek Yadav'),
                                            Text('999999999 | 10Feb 2025')

                                          ],
                                        ),
                                        Spacer(),
                                        Column(
                                          children: [
                                            Text('✓ Completed '),
                                            Text('₹ 50 Earned')
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Card(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 10,right: 10),
                                    child: Row(
                                      children: [
                                        Image.asset('assets/images/coin1.png'),
                                        Column(
                                          children: [
                                            Text('Abhishek Yadav'),
                                            Text('999999999 | 10Feb 2025')

                                          ],
                                        ),
                                        Spacer(),
                                        Column(
                                          children: [
                                            Text('✓ Completed '),
                                            Text('₹ 50 Earned')
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Card(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 10,right: 10),
                                    child: Row(
                                      children: [
                                        Image.asset('assets/images/coin1.png'),
                                        Column(
                                          children: [
                                            Text('Abhishek Yadav'),
                                            Text('999999999 | 10Feb 2025')

                                          ],
                                        ),
                                        Spacer(),
                                        Column(
                                          children: [
                                            Text('✓ Completed '),
                                            Text('₹ 50 Earned')
                                          ],
                                        )
                                      ],
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
                              padding: const EdgeInsets.only(
                                left: 10,
                                right: 10,
                              ),
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
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16),
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
