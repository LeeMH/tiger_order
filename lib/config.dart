import 'package:flutter/material.dart';

import 'package:logger/logger.dart';

var loggerWithStack = Logger(
  printer: PrettyPrinter(),
);

var logger = Logger(
  printer: PrettyPrinter(methodCount: 0),
);

class Config {
  //////////////////////////////////////////////
  // 색상
  //////////////////////////////////////////////
  // color
  static Color red = const Color.fromRGBO(229, 115, 115, 1);
  static Color blue = const Color.fromRGBO(33, 150, 243, 1);
  static Color grey = const Color.fromRGBO(158, 158, 158, 1);
  static Color white = const Color.fromRGBO(255, 255, 255, 1);
  static Color black = const Color.fromRGBO(0, 0, 0, 1);
  static Color green = const Color.fromRGBO(129, 199, 132, 1);
  static Color orange = const Color.fromRGBO(255, 204, 128, 1);

  // seedColor
  static Color seedColor = Colors.indigoAccent;

  // appBar
  static Color appBarColor = const Color.fromRGBO(159, 168, 218, 1);
  static Color bodyColor = const Color.fromRGBO(197, 202, 233, 1);
  static Color cardColor = const Color.fromRGBO(232, 234, 246, 1);

  //////////////////////////////////////////////
  // text style
  //////////////////////////////////////////////
  static TextStyle blackH1({bool bold = false}) {
    return _fontStyle(20, black, bold);
  }

  static TextStyle blackH2({bool bold = false}) {
    return _fontStyle(16, black, bold);
  }

  static TextStyle blackH3({bool bold = false}) {
    return _fontStyle(13, black, bold);
  }

  static TextStyle blackH4({bool bold = false}) {
    return _fontStyle(10, black, bold);
  }

  static TextStyle whiteH1({bool bold = false}) {
    return _fontStyle(20, white, bold);
  }

  static TextStyle whiteH2({bool bold = false}) {
    return _fontStyle(16, white, bold);
  }

  static TextStyle whiteH3({bool bold = false}) {
    return _fontStyle(13, white, bold);
  }

  static TextStyle whiteH4({bool bold = false}) {
    return _fontStyle(10, white, bold);
  }

  static TextStyle _fontStyle(double fontSize, Color color, bool bold,
      {String fontFamily = 'NanumGothic'}) {
    return TextStyle(
      fontSize: fontSize,
      color: color,
      fontFamily: fontFamily,
      fontWeight: bold ? FontWeight.bold : null,
    );
  }
}
