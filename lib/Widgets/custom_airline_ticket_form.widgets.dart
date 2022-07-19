import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/app_dimensions.utils.dart';
import '../utils/styles.utils.dart';

class CustomAirlineTicketFormField extends StatelessWidget {
  const CustomAirlineTicketFormField(
      {Key? key, required this.text, required this.icon})
      : super(key: key);

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: AppDimensions.getHeight(12),
        horizontal: AppDimensions.getWidth(12),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppDimensions.getWidth(10)),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: const Color(0xffbfc2df),
          ),
          Gap(AppDimensions.getWidth(12)),
          Text(text, style: Styles.textStyle)
        ],
      ),
    );
  }
}
