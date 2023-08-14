import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nepal_app/widgets/smalltext.dart';

class AppButtons extends StatelessWidget {
  final Color color;
  final Color backgroundColor;
  double size;
  final Color borderColor;
  String? text;
  IconData? icon;
  bool? isIcon;

  AppButtons(
      {super.key,
      this.isIcon = false,
      this.icon,
      this.text = 'Hello',
      required this.size,
      required this.color,
      required this.backgroundColor,
      required this.borderColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
          border: Border.all(color: borderColor, width: 1.0),
          color: backgroundColor,
          borderRadius: BorderRadius.circular(20)),
      child: isIcon == false
          ? Center(
            child: AppText(
                text: text!,
                color: Colors.white,
              ),
          )
          : Center(
            child: Icon(
                icon,
                color: color,
              ),
          ),
    );
  }
}
