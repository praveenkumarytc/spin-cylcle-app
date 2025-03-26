import 'package:flutter/material.dart';
import 'package:service/custome_widgets/scrollable_widget.dart';
import 'package:service/select_services/appbar.dart';

class Membership extends StatefulWidget {
  const Membership({super.key});

  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<Membership> {
  String _selectedOption = 'All';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.grey[200],
            width: double.infinity,
            height: double.infinity,
          ),
          // AppBar inside the body with overlap
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Appbar(
              title: 'MemberShip & Rewards',
              actions: [
                Padding(
                  padding: const EdgeInsets.only(left: 80),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () => _onOptionSelected('MemberShip & Rewards'),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                'MemberShip Plan',
                                style: TextStyle(
                                  color: _selectedOption == 'MemberShip & Rewards' ? Colors.white : Colors.grey,// Change text color based on selection
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 2,
                                width: 130,
                                color: _selectedOption == 'MemberShip & Rewards' ? Colors.white : Colors.grey, // Change text color based on selection
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          _onOptionSelected('Current Plan');
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                'Current Plan',
                                style: TextStyle(
                                  color: _selectedOption == 'Current Plan' ? Colors.white : Colors.grey, // Change text color based on selection
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 2,
                                width: 90,
                                color: _selectedOption == 'Current Plan' ? Colors.white : Colors.grey, // Change text color based on selection
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40, top: 100),
            child: Positioned(
              top: 120,
              left: 20,
              right: 20,
              child: _getBodyContent(_selectedOption),
            ),
          ),
        ],
      ),
    );
  }

  void _onOptionSelected(String value,) {
    setState(() {
      _selectedOption = value;// Update the selected option and refresh the UI
    });
  }

  Widget _getBodyContent(String selectedOption) {
    switch (selectedOption) {
      case 'MemberShip Plan':
        return SingleChildScrollView(
          child: Column(
            children: [
              ScrollableWidget(
                Images: 'assets/images/bi_bicycle.png',
                Texts: 'EMPYREAN GREY',
                Price: '99',
                Month: '1 Month',
                T1: '3 free Pickups and deliveries in a month',
                T2: 'Earn Loyalty Rewards points equal times to your order value',
                T3: 'Member special discounts and offers',
                Button: 'Buy Now',
                T4: '',
                T5: '',
              ),
              SizedBox(height: 20),
              ScrollableWidgett(
                Images: 'assets/images/la_car-side.png',
                Texts: 'EMPYREAN GREEN',
                Price: '199',
                Month: '3 Month',
                T1: '3 free Pickups and deliveries in a month',
                T2: 'Earn Loyalty Rewards points equal times to your order value',
                T3: 'Member special discounts and offers',
                Button: 'Buy Now',
                T4: '',
                T5: '',
              ),
              SizedBox(height: 20),
              ScrollableWidgets(
                Images: 'assets/images/bi_bicycle.png',
                Texts: 'EMPYREAN ORANGE',
                Price: '299',
                Month: '6 Month',
                T1: '3 free Pickups and deliveries in a month',
                T2: 'Earn Loyalty Rewards points equal times to your order value',
                T3: 'Member special discounts and offers',
                Button: 'Buy Now',
                T4: 'Member special discounts and offers',
                T5: 'Member special discounts and offers',
              ),
              SizedBox(height: 20),

              ScrollableWidgetss(
                Images: 'assets/images/bi_bicycle.png',
                Texts: 'EMPYREAN PURPLE',
                Price: '499',
                Month: '12 Month',
                T1: '3 free Pickups and deliveries in a month',
                T2: 'Earn Loyalty Rewards points equal times to your order value',
                T3: 'Member special discounts and offers',
                Button: 'Buy Now',
                T4: 'Member special discounts and offers',
                T5: 'Member special discounts and offers',
              ),
            ],
          ),
        );
      case 'Current Plan':
        return SingleChildScrollView(
          child: Column(
            children: [
              Scrol(
                Images: 'assets/images/Untitled-1 2.png',
                T1: 'Current Membership',
                T2: 'Yo not have any membership',
                Button: "Subscribe Now",
              ),
            ],
          ),
        );
      default:
        return  SingleChildScrollView(
          child: Column(
            children: [
              ScrollableWidget(
                Images: 'assets/images/bi_bicycle.png',
                Texts: 'EMPYREAN GREY',
                Price: '99',
                Month: '1 Month',
                T1: '3 free Pickups and deliveries in a month',
                T2: 'Earn Loyalty Rewards points equal times to your order value',
                T3: 'Member special discounts and offers',
                Button: 'Buy Now',
                T4: '',
                T5: '',
              ),
              SizedBox(height: 20),
              ScrollableWidgett(
                Images: 'assets/images/la_car-side.png',
                Texts: 'EMPYREAN GREEN',
                Price: '199',
                Month: '3 Month',
                T1: '3 free Pickups and deliveries in a month',
                T2: 'Earn Loyalty Rewards points equal times to your order value',
                T3: 'Member special discounts and offers',
                Button: 'Buy Now',
                T4: '',
                T5: '',
              ),
              SizedBox(height: 20),

              ScrollableWidgets(
                Images: 'assets/images/Vector.png',
                Texts: 'EMPYREAN ORANGE',
                Price: '299',
                Month: '6 Month',
                T1: '3 free Pickups and deliveries in a month',
                T2: 'Earn Loyalty Rewards points equal times to your order value',
                T3: 'Member special discounts and offers',
                Button: 'Buy Now',
                T4: 'Member special discounts and offers',
                T5: 'Member special discounts and offers',
              ),
              SizedBox(height: 20),

              ScrollableWidgetss(
                Images: 'assets/images/ion.png',
                Texts: 'EMPYREAN PURPLE',
                Price: '499',
                Month: '12 Month',
                T1: '3 free Pickups and deliveries in a month',
                T2: 'Earn Loyalty Rewards points equal times to your order value',
                T3: 'Member special discounts and offers',
                Button: 'Buy Now',
                T4: 'Member special discounts and offers',
                T5: 'Member special discounts and offers',
              ),
            ],
          ),
        );
    }
  }
}
