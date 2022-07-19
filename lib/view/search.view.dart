import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/Widgets/custom_airline_ticket_form.widgets.dart';
import 'package:ticket_booking_app/Widgets/custom_btn.widgets.dart';
import 'package:ticket_booking_app/utils/app_dimensions.utils.dart';
import 'package:ticket_booking_app/utils/styles.utils.dart';

import '../Widgets/view_all.widgets.dart';

class SearchView extends StatefulWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    final size = AppDimensions.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppDimensions.getWidth(20),
            vertical: AppDimensions.getHeight(20)),
        children: [
          Gap(AppDimensions.getHeight(40)),
          Text(
            "What are\nyou looking for?",
            style: Styles.headlineStyle
                .copyWith(fontSize: AppDimensions.getHeight(35)),
          ),
          Gap(AppDimensions.getHeight(20)),
          FittedBox(
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
                    padding: EdgeInsets.symmetric(
                        vertical: AppDimensions.getHeight(7.0)),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(
                          AppDimensions.getHeight(50),
                        ),
                      ),
                    ),
                    child: const Center(child: Text("Airline Tickets")),
                  ),
                  /*
                hotels
                 */
                  Container(
                    width: size.width * .44,
                    padding: EdgeInsets.symmetric(
                        vertical: AppDimensions.getHeight(7.0)),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.horizontal(
                        right: Radius.circular(
                          AppDimensions.getHeight(50),
                        ),
                      ),
                    ),
                    child: const Center(child: Text("Hotels")),
                  ),
                ],
              ),
            ),
          ),
          Gap(AppDimensions.getHeight(25)),
          const CustomAirlineTicketFormField(
            icon: Icons.flight_takeoff_rounded,
            text: "Departure",
          ),
          Gap(AppDimensions.getHeight(20)),
          const CustomAirlineTicketFormField(
            icon: Icons.flight_land_rounded,
            text: "Arrival",
          ),
          Gap(AppDimensions.getHeight(25)),
          CustomButtonWidget(
            text: "Find Tickets",
            onTap: () {},
          ),
          Gap(AppDimensions.getHeight(40)),
          ViewAllWidget(
              text1: "Upcoming Flights", text2: "View all", onTap: () {}),
          Gap(AppDimensions.getHeight(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //left design
              Container(
                height: AppDimensions.getHeight(425),
                width: size.width * 0.42,
                padding: EdgeInsets.symmetric(
                    horizontal: AppDimensions.getWidth(15),
                    vertical: AppDimensions.getHeight(15)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    AppDimensions.getHeight(20.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 1,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      height: AppDimensions.getHeight(190),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          AppDimensions.getHeight(12.0),
                        ),
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fmedia.istockphoto.com%2Fphotos%2Fyoung-couple-at-airport-lounge-waiting-for-their-flight-picture-id686198182%3Fk%3D6%26m%3D686198182%26s%3D170667a%26w%3D0%26h%3Dm-2I1H-9OypZuSybStSxxgwYdbbcpJhlecg5ZagIdJc%3D&f=1&nofb=1"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Gap(AppDimensions.getHeight(12)),
                    Text(
                      "20% discount on the early booking of this flight. Don't miss.",
                      style: Styles.headlineStyle2,
                    )
                  ],
                ),
              ),
              // right design
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * 0.44,
                        height: AppDimensions.getHeight(200),
                        padding: EdgeInsets.symmetric(
                          vertical: AppDimensions.getHeight(15),
                          horizontal: AppDimensions.getWidth(15.0),
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xff3ab8b8),
                          borderRadius: BorderRadius.circular(
                              AppDimensions.getHeight(18.0)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discount\nfor survey",
                              style: Styles.headlineStyle2.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Gap(AppDimensions.getHeight(10)),
                            Text(
                              "Take the survey about our services and get discount",
                              style: Styles.headlineStyle2.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: AppDimensions.getHeight(18.5)),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding: EdgeInsets.all(AppDimensions.getHeight(30)),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                width: 18.0, color: Color(0xff189999)),
                            color: Colors.transparent,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Gap(AppDimensions.getHeight(15)),
                  Container(
                    width: size.width * 0.44,
                    height: AppDimensions.getHeight(200),
                    padding: EdgeInsets.symmetric(
                      vertical: AppDimensions.getHeight(15),
                      horizontal: AppDimensions.getWidth(15.0),
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xffec6545),
                      borderRadius:
                          BorderRadius.circular(AppDimensions.getHeight(18.0)),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Take Love",
                          style: Styles.headlineStyle2.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Gap(AppDimensions.getHeight(15)),
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: "😍",
                                style: TextStyle(fontSize: 30),
                              ),
                              TextSpan(
                                text: "😘",
                                style: TextStyle(fontSize: 40),
                              ),
                              TextSpan(
                                text: "😍",
                                style: TextStyle(fontSize: 30),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Gap(AppDimensions.getHeight(20)),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
