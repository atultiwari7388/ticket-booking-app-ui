import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticket_booking_app/utils/styles.utils.dart';
import 'package:ticket_booking_app/view/bottom_bar.view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Ticket Booking App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: primaryColor),
      home: const BottomBarView(),
    );
  }
}
