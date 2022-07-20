import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/Widgets/thick_container.widgets.dart';
import 'package:ticket_booking_app/utils/app_dimensions.utils.dart';
import 'package:ticket_booking_app/utils/styles.utils.dart';

class TicketsView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketsView({Key? key, required this.ticket, this.isColor})
      : super(key: key);

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
                color: isColor == null ? const Color(0xff526799) : Colors.white,
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
                          style: isColor == null
                              ? Styles.headlineStyle3
                              : Styles.headlineStyle3
                                  .copyWith(color: Colors.black54)),
                      const Spacer(),
                      const ThickContainer(isColor: true),
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
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                              color: isColor == null
                                                  ? Colors.white
                                                  : Colors.grey.shade400),
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
                                child: Icon(Icons.local_airport_rounded,
                                    color: isColor == null
                                        ? Colors.white
                                        : const Color(0xff8accf7)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const ThickContainer(isColor: true),
                      const Spacer(),
                      Text(
                        ticket["to"]["code"],
                        style: isColor == null
                            ? Styles.headlineStyle3
                            : Styles.headlineStyle3
                                .copyWith(color: Colors.black54),
                      ),
                    ],
                  ),
                  const Gap(1.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppDimensions.getWidth(100.0),
                        child: Text(ticket["from"]["name"],
                            style: isColor == null
                                ? Styles.headlineStyle4
                                : Styles.headlineStyle4
                                    .copyWith(color: Colors.grey.shade400)),
                      ),
                      Text(ticket["flying_time"],
                          style: isColor == null
                              ? Styles.headlineStyle4
                              : Styles.headlineStyle4.copyWith(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w500)),
                      SizedBox(
                        width: AppDimensions.getWidth(100.0),
                        child: Text(
                          ticket["to"]["name"],
                          textAlign: TextAlign.end,
                          style: isColor == null
                              ? Styles.headlineStyle4
                              : Styles.headlineStyle4
                                  .copyWith(color: Colors.grey.shade400),
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
              color: isColor == null ? Styles.orangeColor : Colors.white,
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
                              (index) => SizedBox(
                                width: 3,
                                height: 1,
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                      color: isColor == null
                                          ? Colors.white
                                          : Colors.grey.shade300),
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
                color: isColor == null ? Styles.orangeColor : Colors.white,
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
                          Text(ticket["date"],
                              style: isColor == null
                                  ? Styles.headlineStyle3
                                  : Styles.headlineStyle3
                                      .copyWith(color: Colors.black54)),
                          const Gap(5.0),
                          Text(
                            "Date",
                            style: isColor == null
                                ? Styles.headlineStyle4
                                : Styles.headlineStyle4
                                    .copyWith(color: Colors.grey.shade400),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(ticket["departure_time"],
                              style: isColor == null
                                  ? Styles.headlineStyle3
                                  : Styles.headlineStyle3
                                      .copyWith(color: Colors.black54)),
                          const Gap(5.0),
                          Text(
                            "Departure time",
                            style: isColor == null
                                ? Styles.headlineStyle4
                                : Styles.headlineStyle4
                                    .copyWith(color: Colors.grey.shade400),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            ticket["number"].toString(),
                            style: isColor == null
                                ? Styles.headlineStyle3
                                : Styles.headlineStyle3
                                    .copyWith(color: Colors.black54),
                          ),
                          const Gap(5.0),
                          Text(
                            "Number",
                            style: isColor == null
                                ? Styles.headlineStyle4
                                : Styles.headlineStyle4
                                    .copyWith(color: Colors.grey.shade400),
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
