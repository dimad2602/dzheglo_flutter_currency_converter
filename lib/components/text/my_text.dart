import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyText extends StatelessWidget {
  final Color? color;
  final String text;
  final double size;
  final TextOverflow overflow;
  final bool bold;
  final int? maxLines;
  final bool appbar;
  final bool lineThrough;
  final bool italics;
  final TextAlign? textAlign;
  final double? height;
  final FontWeight? fontWeight;

  const MyText({
    super.key,
    this.color = Colors.black,
    required this.text,
    this.size = 0,
    this.overflow = TextOverflow.ellipsis,
    this.bold = false,
    this.maxLines = 1,
    this.appbar = false,
    this.lineThrough = false,
    this.italics = false,
    required,
    this.textAlign,
    this.height = 1.2,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      overflow: overflow,
      textAlign: textAlign,
      style: TextStyle(
          fontFamily: 'Roboto',
          fontStyle: italics ? FontStyle.italic : null,
          color: color,
          height: height,
          decoration: lineThrough ? TextDecoration.lineThrough : null,
          fontSize: size == 0 ? 14.h : size,
          fontWeight: bold == false ? fontWeight ?? FontWeight.w400 : FontWeight.bold),
    );
  }
}
