import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:service/utils/colors.dart';

class DottedVorder extends StatelessWidget {
  const DottedVorder({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              children: [
                DottedBorder(
                  color: Mycolors.greenColor,
                  strokeWidth: 2,
                  borderType: BorderType.RRect,
                  radius: const Radius.circular(30),
                  dashPattern: [5, 3], // Defines dotted pattern
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width * .9,

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            '224499',
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Clipboard.setData(
                              const ClipboardData(text: '224499'),
                            );
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Copied to clipboard!'),
                              ),
                            );
                          },
                          child: Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Mycolors.greenColor,
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16.0,
                                vertical: 8.0,
                              ),
                              child: const Text(
                                'Copy',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                ),
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
          );
  }
}