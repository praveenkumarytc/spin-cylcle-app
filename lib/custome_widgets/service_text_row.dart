import 'package:flutter/material.dart';

class ServiceTextRow extends StatelessWidget {
  const ServiceTextRow({super.key, required this.servicename1,required this.servicename2,required this.servicename3});
  final String servicename1;
  final String servicename2;
  final String servicename3;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [Text(servicename1), Text(servicename2), Text(servicename3)],
    );
  }
}
