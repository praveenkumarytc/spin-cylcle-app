import 'package:flutter/material.dart';

class DeliveryTypeIcon extends StatelessWidget {
  const DeliveryTypeIcon({super.key,required this.iconname});
final Image iconname;
  @override
  Widget build(BuildContext context) {
    return  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withValues(alpha: 0.5),
                          spreadRadius: 3,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: iconname,
                    ),
                  );
  }
}