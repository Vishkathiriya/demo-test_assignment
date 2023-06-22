import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontsize;
  final FontWeight? fontWeight;
  final double? wordspace;
  final bool textCenter;
  final dynamic foreground;
  final double? laterspacing;
  final int? maxLines;
  final TextDecoration? decoration;
  final TextStyle? textStyle;
  const AppText({
    Key? key,
    required this.text,
    this.color,
    this.fontsize,
    this.fontWeight,
    this.wordspace,
    this.laterspacing,
    this.decoration,
    this.foreground,
    this.maxLines,
    this.textStyle,
    this.textCenter = false,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: TextOverflow.clip,
      maxLines: maxLines,
      textAlign: textCenter ? TextAlign.center : null,
      style: textStyle ??
          GoogleFonts.inter(
            letterSpacing: laterspacing,
            color: color,
            fontSize: fontsize,
            fontWeight: fontWeight,
            wordSpacing: wordspace,
            decoration: decoration,
            foreground: foreground,
          ),
    );
  }
}
