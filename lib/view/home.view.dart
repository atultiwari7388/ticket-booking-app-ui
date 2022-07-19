import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/Widgets/view_all.widgets.dart';
import 'package:ticket_booking_app/utils/app_info.list.utils.dart';
import 'package:ticket_booking_app/utils/styles.utils.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ticket_booking_app/view/components/hotel.components.dart';
import 'package:ticket_booking_app/view/components/tickets.components.dart';

import '../utils/app_dimensions.utils.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding:
                EdgeInsets.symmetric(horizontal: AppDimensions.getWidth(20.0)),
            child: Column(
              children: [
                //top section
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Good Morning", style: Styles.headlineStyle5),
                        const Gap(5),
                        Text("Book Tickets", style: Styles.headlineStyle),
                      ],
                    ),
                    //image Section
                    Container(
                      height: AppDimensions.getHeight(50.0),
                      width: AppDimensions.getWidth(50.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            AppDimensions.getHeight(10.0)),
                        color: Colors.white,
                      ),
                      child: const Icon(Icons.menu),
                    ),
                  ],
                ),
                //search bar
                const Gap(25),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "search",
                    filled: true,
                    fillColor: Colors.white,
                    border: outlineInputBorder,
                    enabledBorder: outlineInputBorder,
                    focusedBorder: outlineInputBorder,
                    prefixIcon: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: AppDimensions.getWidth(12.0)),
                      child: SvgPicture.asset("assets/icons/Search.svg"),
                    ),
                  ),
                ),
                //upcoming flight section
                const Gap(40),
                ViewAllWidget(
                    text1: "Upcoming Flights", text2: "View all", onTap: () {}),
              ],
            ),
          ),
          const Gap(15),
          //ticket
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            padding: EdgeInsets.only(left: AppDimensions.getHeight(20.0)),
            child: Row(
                children: ticketList
                    .map((ticket) => TicketsView(ticket: ticket))
                    .toList()),
          ),
          const Gap(15),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child:
                ViewAllWidget(text1: "Hotels", text2: "View all", onTap: () {}),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            padding: EdgeInsets.only(left: AppDimensions.getHeight(20.0)),
            child: Row(
              children:
                  hotelList.map((hotel) => HotelsView(hotel: hotel)).toList(),
            ),
          ),
          const Gap(40),
        ],
      ),
    );
  }
}

//outline input border
const OutlineInputBorder outlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(
    Radius.circular(10.0),
  ),
  borderSide: BorderSide.none,
);
