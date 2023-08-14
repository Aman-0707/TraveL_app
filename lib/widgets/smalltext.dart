import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  double size;
  final String text;
  final Color color;
  AppText(
      {super.key,
      this.size = 15,
      required this.text,
      this.color = const Color.fromARGB(255, 49, 2, 2)});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(color: color, fontWeight: FontWeight.bold, fontSize: size),
    );
  }
}
