/// responsive text widget library class.
library responsive_text_widget;

import 'package:flutter/material.dart';

/// A Responsive Text Class.
class ResponsiveText extends StatelessWidget {
  final String? text;
  final TextStyle? style;
  final TextAlign textAlign;
  final int maxLine;
  final TextOverflow overflow;

  const ResponsiveText({
    Key? key,
    required this.text,
    this.style = const TextStyle(color: Colors.black),
    this.textAlign = TextAlign.center,
    this.maxLine = 100,
    this.overflow = TextOverflow.visible,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: text,
        style: style,
      ),
      maxLines: maxLine,
      overflow: overflow,
      textAlign: textAlign,
    );
  }
}

/// Calculates the font size to fit the available space.
///
/// This method calculates and returns the adjusted font size based on the
/// [TextPainter] measurements and the maximum available space for both width
/// and height.
/*
double calculateFontSizeToFit(
    TextPainter textPainter,
    double maxWidth,
    double maxHeight,
    double currentFontSize,
    ) {
  final double scaleFactor2 = currentFontSize / textPainter.width;
  if (textPainter.width > maxWidth) {
    currentFontSize = maxWidth * scaleFactor2;
  }

  final TextPainter textPainter2 = TextPainter(
    text: TextSpan(
      text: child.data,
      style: child.style?.copyWith(fontSize: currentFontSize),
    ),
    textDirection: TextDirection.ltr,
    maxLines: child.maxLines ?? 1,
  );
  textPainter2.layout(maxWidth: double.maxFinite);

  if (textPainter2.height > maxHeight) {
    final double scaleFactor = currentFontSize / textPainter.height;
    currentFontSize = maxHeight * scaleFactor;
  }
*/
