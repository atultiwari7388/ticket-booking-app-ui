import 'package:flutter/material.dart';

import '../utils/app_dimensions.utils.dart';
import '../utils/styles.utils.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({Key? key, required this.text, required this.onTap})
      : super(key: key);

  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: AppDimensions.getHeight(18.0),
          horizontal: AppDimensions.getWidth(15.0),
        ),
        decoration: BoxDecoration(
          color: const Color(0xd91130ce),
          borderRadius: BorderRadius.circular(
            AppDimensions.getHeight(10),
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: Styles.textStyle.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
