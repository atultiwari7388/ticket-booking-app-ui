import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/Widgets/thick_container.widgets.dart';
import 'package:ticket_booking_app/utils/app_dimensions.utils.dart';
import 'package:ticket_booking_app/utils/styles.utils.dart';

class TicketsView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  const TicketsView({Key? key, required this.ticket}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print("${ticket["number"]}");
    }

    final size = AppDimensions.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: AppDimensions.getHeight(200),
      child: Container(
        margin: EdgeInsets.only(left: AppDimensions.getHeight(16.0)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /*
            showing the blue part of the card
             */
            Container(
              padding: EdgeInsets.all(AppDimensions.getHeight(16.0)),
              decoration: BoxDecoration(
                color: const Color(0xff526799),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AppDimensions.getHeight(21.0)),
                  topRight: Radius.circular(AppDimensions.getHeight(21.0)),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(ticket["from"]["code"],
                          style: Styles.headlineStyle3),
                      const Spacer(),
                      const ThickContainer(),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: AppDimensions.getHeight(24.0),
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
                                      (index) => SizedBox(
                                        width: AppDimensions.getWidth(3.0),
                                        height: AppDimensions.getHeight(1.0),
                                        child: const DecoratedBox(
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
                      Text(ticket["to"]["code"], style: Styles.headlineStyle3),
                    ],
                  ),
                  const Gap(1.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppDimensions.getWidth(100.0),
                        child: Text(ticket["from"]["name"],
                            style: Styles.headlineStyle4),
                      ),
                      Text(ticket["flying_time"], style: Styles.headlineStyle4),
                      SizedBox(
                        width: AppDimensions.getWidth(100.0),
                        child: Text(
                          ticket["to"]["name"],
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
                  SizedBox(
                    height: AppDimensions.getHeight(20.0),
                    width: AppDimensions.getWidth(10.0),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight:
                              Radius.circular(AppDimensions.getHeight(10.0)),
                          bottomRight:
                              Radius.circular(AppDimensions.getHeight(10.0)),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(AppDimensions.getHeight(12.0)),
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
                  SizedBox(
                    height: AppDimensions.getHeight(20.0),
                    width: AppDimensions.getWidth(10.0),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft:
                              Radius.circular(AppDimensions.getHeight(10.0)),
                          bottomLeft:
                              Radius.circular(AppDimensions.getHeight(10.0)),
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
              padding: EdgeInsets.only(
                left: AppDimensions.getHeight(16.0),
                top: AppDimensions.getHeight(10.0),
                right: AppDimensions.getHeight(16.0),
                bottom: AppDimensions.getHeight(16.0),
              ),
              decoration: BoxDecoration(
                color: Styles.orangeColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(AppDimensions.getHeight(21.0)),
                  bottomRight: Radius.circular(AppDimensions.getHeight(21.0)),
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
                          Text(ticket["date"], style: Styles.headlineStyle3),
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
                          Text(ticket["departure_time"],
                              style: Styles.headlineStyle3),
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
                          Text(ticket["number"].toString(),
                              style: Styles.headlineStyle3),
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
