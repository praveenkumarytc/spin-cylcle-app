import 'package:flutter/material.dart';

class Appbutton extends StatelessWidget {
  const Appbutton({
    super.key,
    required this.label,
    required this.onTap,
    required this.widgetColors,
    required this.textColors
  });
  final Function() onTap;
  final String label;
  final Color widgetColors;
  final Color textColors;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: widgetColors),
      onPressed: onTap,
      child: Text(
        label,
        style: TextStyle(
          color: textColors,
        ),
      ),
    );
  }
}
