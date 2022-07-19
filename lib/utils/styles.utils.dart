import 'package:flutter/material.dart';

Color primaryColor = const Color(0xff687daf);

class Styles {
  //colors
  static Color primaryColor = primaryColor;
  static Color textColor = const Color(0xff3b3b3b);
  static Color bgColor = const Color(0xffeeedf2);
  static Color orangeColor = const Color(0xfff37b67);
  static Color kakiColor = const Color(0xffd2bdb6);

  //textStyles

  static TextStyle textStyle =
      TextStyle(fontSize: 16.0, color: textColor, fontWeight: FontWeight.w500);

  static TextStyle headlineStyle =
      TextStyle(fontSize: 26.0, color: textColor, fontWeight: FontWeight.bold);

  static TextStyle headlineStyle2 =
      TextStyle(fontSize: 21.0, color: textColor, fontWeight: FontWeight.bold);

  static TextStyle headlineStyle3 = const TextStyle(
      fontSize: 17.0, color: Colors.white, fontWeight: FontWeight.w500);

  static TextStyle headlineStyle4 = const TextStyle(
      fontSize: 14.0, color: Colors.white, fontWeight: FontWeight.w500);

  static TextStyle headlineStyle5 = TextStyle(
    fontSize: 17.0,
    color: Colors.blueGrey.shade200,
    fontWeight: FontWeight.w100,
  );

  static TextStyle headlineStyle6 = TextStyle(
    fontSize: 14.0,
    color: Colors.blueGrey.shade200,
    fontWeight: FontWeight.w100,
  );
}
