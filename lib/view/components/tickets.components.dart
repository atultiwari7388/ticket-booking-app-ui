import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/Widgets/thick_container.widgets.dart';
import 'package:ticket_booking_app/utils/app_dimensions.utils.dart';
import 'package:ticket_booking_app/utils/styles.utils.dart';

class TicketsView extends StatelessWidget {
  const TicketsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppDimensions.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(left: 16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /*
            showing the blue part of the card
             */
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
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 24,
                              child: LayoutBuilder(
                                builder: (BuildContext context,
                                    BoxConstraints constraints) {
                                  if (kDebugMode) {
                                    print(
                                        "The Screen Width is ${constraints.constrainWidth()}");
                                  }
                                  return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                      (constraints.constrainWidth() / 6)
                                          .floor(),
                                      (index) => const SizedBox(
                                        width: 3,
                                        height: 1,
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.5,
                                child: const Icon(Icons.local_airport_rounded,
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const ThickContainer(),
                      const Spacer(),
                      Text("LDN", style: Styles.headlineStyle3),
                    ],
                  ),
                  const Gap(1.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text("New York", style: Styles.headlineStyle4),
                      ),
                      Text("8H 30M", style: Styles.headlineStyle4),
                      SizedBox(
                        width: 100,
                        child: Text(
                          "London",
                          textAlign: TextAlign.end,
                          style: Styles.headlineStyle4,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            /*
            showing the red part of the card
             */
            Container(
              color: Styles.orangeColor,
              child: Row(
                children: [
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constraints) {
                          if (kDebugMode) {
                            print(
                                "The Screen Width is ${constraints.constrainWidth()}");
                          }
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                              (constraints.constrainWidth() / 16).floor(),
                              (index) => const SizedBox(
                                width: 3,
                                height: 1,
                                child: DecoratedBox(
                                  decoration:
                                      BoxDecoration(color: Colors.white),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            /*
            bottom part of the card
             */
            Container(
              padding: const EdgeInsets.only(
                  left: 16.0, top: 10, right: 16.0, bottom: 16.0),
              decoration: BoxDecoration(
                color: Styles.orangeColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(21.0),
                  bottomRight: Radius.circular(21.0),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("10 AUG", style: Styles.headlineStyle3),
                          const Gap(5.0),
                          Text(
                            "Date",
                            style: Styles.headlineStyle4,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("09:00 AM", style: Styles.headlineStyle3),
                          const Gap(5.0),
                          Text(
                            "Departure time",
                            style: Styles.headlineStyle4,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("23 ", style: Styles.headlineStyle3),
                          const Gap(5.0),
                          Text(
                            "Number",
                            style: Styles.headlineStyle4,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
