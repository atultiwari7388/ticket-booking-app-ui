import 'package:flutter/material.dart';

import '../utils/app_dimensions.utils.dart';

class CustomTicketTabsWidget extends StatelessWidget {
  const CustomTicketTabsWidget(
      {Key? key, required this.text1, required this.text2})
      : super(key: key);

  final String text1, text2;

  @override
  Widget build(BuildContext context) {
    final size = AppDimensions.getSize(context);
    return FittedBox(
      child: Container(
        padding: const EdgeInsets.all(3.5),
        decoration: BoxDecoration(
          color: const Color(0xfff4f6fd),
          borderRadius: BorderRadius.circular(
            AppDimensions.getHeight(50),
          ),
        ),
        child: Row(
          children: [
            /*
                airline tickets
                 */
            Container(
              width: size.width * .44,
              padding:
                  EdgeInsets.symmetric(vertical: AppDimensions.getHeight(7.0)),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(
                    AppDimensions.getHeight(50),
                  ),
                ),
              ),
              child: Center(child: Text(text1)),
            ),
            /*
                hotels
                 */
            Container(
              width: size.width * .44,
              padding:
                  EdgeInsets.symmetric(vertical: AppDimensions.getHeight(7.0)),
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(
                    AppDimensions.getHeight(50),
                  ),
                ),
              ),
              child: Center(child: Text(text2)),
            ),
          ],
        ),
      ),
    );
  }
}
