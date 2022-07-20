import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/Widgets/custom_ticket_tabs.widgets.dart';
import 'package:ticket_booking_app/utils/app_dimensions.utils.dart';
import 'package:ticket_booking_app/utils/app_info.list.utils.dart';
import 'package:ticket_booking_app/utils/styles.utils.dart';
import 'package:ticket_booking_app/view/components/tickets.components.dart';

class TicketView extends StatelessWidget {
  const TicketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppDimensions.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
              horizontal: AppDimensions.getWidth(20),
              vertical: AppDimensions.getHeight(20),
            ),
            children: [
              Gap(AppDimensions.getHeight(50)),
              Text("Tickets", style: Styles.headlineStyle),
              Gap(AppDimensions.getHeight(20)),
              const CustomTicketTabsWidget(
                  text1: "Upcoming", text2: "Previous"),
              Gap(AppDimensions.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: AppDimensions.getHeight(15.0)),
                child: TicketsView(ticket: ticketList[0], isColor: true),
              ),
              // Container(
              //   padding: EdgeInsets.only(left: AppDimensions.getHeight(15.0)),
              //   child: Column(
              //     children: [
              //       Row(
              //         children: [
              //           Column(
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: [
              //               Text(
              //                 "Darling",
              //                 style: Styles.headlineStyle2,
              //               ),
              //               Text("Passenger", style: Styles.headlineStyle2),
              //             ],
              //           )
              //         ],
              //       ),
              //     ],
              //   ),
              // ),
              //
            ],
          ),
        ],
      ),
    );
  }
}
