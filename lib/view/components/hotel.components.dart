import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/utils/app_dimensions.utils.dart';
import 'package:ticket_booking_app/utils/styles.utils.dart';

class HotelsView extends StatelessWidget {
  const HotelsView({Key? key, required this.hotel}) : super(key: key);
  final Map<String, dynamic> hotel;
  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print("The hotel name is ${hotel["place"]}");
    }
    final size = AppDimensions.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: AppDimensions.getHeight(350.0),
      padding: EdgeInsets.symmetric(
          horizontal: AppDimensions.getWidth(15.0),
          vertical: AppDimensions.getHeight(17.0)),
      margin: EdgeInsets.only(
          right: AppDimensions.getHeight(17.0),
          top: AppDimensions.getHeight(5.0)),
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(AppDimensions.getHeight(24.0)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 20,
            spreadRadius: 5,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppDimensions.getHeight(180.0),
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius:
                  BorderRadius.circular(AppDimensions.getHeight(12.0)),
              image: DecorationImage(
                image: NetworkImage('${hotel["image"]}'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Gap(15),
          Text("${hotel["place"]}",
              style: Styles.headlineStyle2.copyWith(color: Styles.kakiColor)),
          const Gap(5),
          Text("${hotel["destination"]}",
              style: Styles.headlineStyle3.copyWith(color: Colors.white)),
          const Gap(8),
          Text("${hotel["price"]}k INR/night",
              style: Styles.headlineStyle.copyWith(color: Styles.kakiColor)),
        ],
      ),
    );
  }
}
