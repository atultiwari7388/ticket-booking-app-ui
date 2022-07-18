import 'package:flutter/material.dart';
import 'package:ticket_booking_app/Widgets/thick_container.widgets.dart';
import 'package:ticket_booking_app/utils/app_dimensions.utils.dart';
import 'package:ticket_booking_app/utils/styles.utils.dart';

class TicketsView extends StatelessWidget {
  const TicketsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppDimensions.getSize(context);
    return SizedBox(
      width: size.width / 2,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(left: 16.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: const BoxDecoration(
                color: Color(0xff526799),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(21.0),
                  topRight: Radius.circular(21.0),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("NYC", style: Styles.headlineStyle3),
                      const Spacer(),
                      const ThickContainer(),
                      Expanded(
                        child: SizedBox(
                          height: 24,
                          child: Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: List.generate(
                              5,
                              (index) =>
                                  Text("-", style: Styles.headlineStyle3),
                            ),
                          ),
                        ),
                      ),
                      const ThickContainer(),
                      const Spacer(),
                      Text("LDN", style: Styles.headlineStyle3),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
