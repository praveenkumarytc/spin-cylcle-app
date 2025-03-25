import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Import this for SystemChrome

class MyApp extends StatelessWidget implements PreferredSizeWidget {
  const MyApp({super.key, this.actions, required this.title});

  final String title;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF6E3667), Color(0xFFAC0097)],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
      ),
      height: 300,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                  ),
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              actions != null ? Row(children: actions!) : SizedBox.shrink(),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(300);
}
