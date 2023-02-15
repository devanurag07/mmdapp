import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mmdapp/common/widget/custom_button.dart';

import '../utils/global_variable.dart';
import 'otp_field.dart';

class Otp extends StatelessWidget {
  final otpFormKey = GlobalKey<FormState>();
  Otp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40.h,
            ),
            Text(
              "Enter the 6-digit OTP sent to",
              style: TextStyle(
                  color: AppColors.mainColor,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "+91798796876",
              style: TextStyle(
                  color: AppColors.mainColor,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 30.h,
            ),
            Align(
              alignment: Alignment.center,
              child: OtpFieldWidget(
                otp_form_key: otpFormKey,
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              children: [
                Text(
                  "Didn't receive the code?",
                  style: TextStyle(
                      color: AppColors.lightTextColor,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 5.w,
                ),
                GestureDetector(
                  child: Text(
                    "Resend",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
            Spacer(),
            CustomButton(onPressed: () {}, text: "Continue"),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
