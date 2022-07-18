import 'package:flutter/cupertino.dart';

class AppDimensions {
  static getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }
}
