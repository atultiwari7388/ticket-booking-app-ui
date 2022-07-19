import 'package:flutter/material.dart';

import '../utils/styles.utils.dart';

class ViewAllWidget extends StatelessWidget {
  const ViewAllWidget({
    Key? key,
    required this.text1,
    required this.text2,
    required this.onTap,
  }) : super(key: key);
  final String text1, text2;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text1, style: Styles.headlineStyle2),
        InkWell(
          onTap: onTap,
          child: Text(text2, style: Styles.headlineStyle6),
        ),
      ],
    );
  }
}
