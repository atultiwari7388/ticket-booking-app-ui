import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/utils/styles.utils.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ticket_booking_app/view/tickets.view.dart';

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
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
                        Text("Good Morning", style: Styles.headlineStyle3),
                        const Gap(5),
                        Text("Book Tickets", style: Styles.headlineStyle),
                      ],
                    ),
                    //image Section
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
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
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: SvgPicture.asset("assets/icons/Search.svg"),
                    ),
                  ),
                ),
                //upcoming flight section
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Upcoming Flights", style: Styles.headlineStyle2),
                    InkWell(
                      onTap: () {},
                      child: Text("View all", style: Styles.headlineStyle4),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Gap(15),
          //ticket
          const TicketsView(),
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
