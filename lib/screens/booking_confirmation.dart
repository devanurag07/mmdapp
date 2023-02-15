import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mmdapp/common/widget/custom_button.dart';

class BookingConfirmation extends StatelessWidget {
  const BookingConfirmation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.blue,
            )),
        title: Text(
          "Booking Confirmation",
          style: TextStyle(color: Colors.blue),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            SvgPicture.asset(
              "assets/icons/successfull.svg",
              height: 200.h,
              width: 200.w,
            ),
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
              width: 200.w,
              child: Text(
                "Appointment booked Successfully!",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20.sp),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            SizedBox(
              width: 150.w,
              child: Text(
                "Appointment booked with Dr.Arun Srinivas V on !2Jan2023@10:00AM",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14.sp),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            CustomButton(onPressed: () {}, text: 'View My Appontments')
          ],
        ),
      )),
    );
  }
}
