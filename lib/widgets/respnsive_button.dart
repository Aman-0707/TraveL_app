import 'package:flutter/material.dart';
import 'package:nepal_app/widgets/smalltext.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;

  ResponsiveButton({
    super.key,
    this.isResponsive = false,
     this.width = 120,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: isResponsive==true?double.maxFinite:width,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.purple[300],
        ),
        child: Row(
          mainAxisAlignment: isResponsive==true?MainAxisAlignment.spaceAround:  MainAxisAlignment.center,
          children: [
            isResponsive==true?AppText(text: 'Book now',color: Colors.white,size: 20,):Container(),
            Icon(
              Icons.bookmark_border_outlined,
              size: 40,
            ),
          ],
        ),
      ),
    );
  }
}
