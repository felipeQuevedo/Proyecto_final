import 'package:flutter/material.dart';


class TextWidget extends StatelessWidget {
  TextWidget({Key? key, required this.text, required this.color, required this.textSize, this.Estitulo = false, this.maxlines = 10}) : super(key: key);
final String text;
final Color color;
final double textSize;
bool Estitulo;
int maxlines = 10;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:TextStyle(
        overflow: TextOverflow.ellipsis,
          color: color,fontSize: textSize,
          fontWeight:Estitulo? FontWeight.bold: FontWeight.normal),
    );
  }
}
