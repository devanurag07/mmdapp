import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mmdapp/common/widget/custom_button.dart';

import '../common/utils/global_variable.dart';
import 'otp_field.dart';

class Otp extends StatelessWidget {
  final otpFormKey = GlobalKey<FormState>();
  Otp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            Text(
              "Enter the 6-digit OTP sent to",
              style: TextStyle(
                  color: AppColors.mainColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "+91798796876",
              style: TextStyle(
                  color: AppColors.mainColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.center,
              child: OtpFieldWidget(
                otp_form_key: otpFormKey,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text(
                  "Didn't receive the code?",
                  style: TextStyle(
                      color: AppColors.titleColorExtraLight,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  child: Text(
                    "Resend",
                    style: TextStyle(
                        color: AppColors.mainColor,
                        fontSize: 15,
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
