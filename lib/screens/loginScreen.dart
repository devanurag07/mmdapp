import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../common/widget/custom_button.dart';
import '../utils/global_variable.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 235, 235, 235),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40.h,
              ),
              Text(
                "Enter Your Mobie Number",
                style: TextStyle(fontSize: 20.sp, color: AppColors.mainColor),
              ),
              SizedBox(
                height: 30.h,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10.r)),
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 7.w,
                      ),
                      Text(
                        "+91",
                        style: TextStyle(fontSize: 20.sp),
                      ),
                      SizedBox(
                        width: 7.w,
                      ),
                      Image.asset("assets/dropdown.png"),
                      SizedBox(
                        width: 10.w,
                      ),
                      Expanded(
                        child: TextFormField(
                          decoration: new InputDecoration(
                              hintText: "Moblie Number",
                              border: InputBorder.none),
                        ),
                      ),
                    ]),
              ),
              SizedBox(
                height: 40.h,
              ),
              Text(
                "By continuing , you agree to our",
                style: TextStyle(color: Colors.black54, fontSize: 15.sp),
              ),
              Text(
                "Terms & Conditions",
                style: TextStyle(color: Colors.blue, fontSize: 15.sp),
              ),
              Spacer(),
              Spacer(),
              CustomButton(
                onPressed: () {},
                text: "Continue",
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
