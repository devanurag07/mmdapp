import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mmdapp/common/widget/custom_button.dart';
import 'package:mmdapp/screens/time_slot.dart';

import '../utils/global_variable.dart';

class DoctorProfile extends StatelessWidget {
  const DoctorProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity.w,
            height: 250.h,
            color: Colors.blue,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Positioned(
                      top: 30,
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back)),
                    ),
                    SizedBox(
                        height: 200.h,
                        child:
                            SvgPicture.asset("assets/icons/doctors_team.svg")),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 210),
            // top: 100,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.r),
                      topRight: Radius.circular(50.r))),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          child:
                              SvgPicture.asset("assets/icons/dummy_image.svg"),
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Dr. Arun Shrivastav",
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.lightTextColor),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Row(
                              children: [
                                Image.asset("assets/dentist.png"),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Text(
                                  "Dentist",
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  width: 4.w,
                                ),
                                Text(
                                  "-ASV Healthcare",
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.lightTextColor),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  "assets/big_star.png",
                                  height: 20.h,
                                  width: 20.w,
                                ),
                                SizedBox(
                                  width: 4.w,
                                ),
                                Image.asset(
                                  "assets/big_star.png",
                                  height: 20.h,
                                  width: 20.w,
                                ),
                                SizedBox(
                                  width: 4.w,
                                ),
                                Image.asset(
                                  "assets/big_star.png",
                                  height: 20.h,
                                  width: 20.w,
                                ),
                                SizedBox(
                                  width: 4.w,
                                ),
                                Image.asset(
                                  "assets/big_star.png",
                                  height: 20.h,
                                  width: 20.w,
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Image.asset(
                                  "assets/half_star.png",
                                  height: 20.h,
                                  width: 20.w,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "4.5",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    SizedBox(
                      width: double.infinity.w,
                      child: Text(
                        " simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.lightTextColor),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                      width: double.infinity.w,
                      height: 70.h,
                      decoration: BoxDecoration(
                          color: AppColors.consultationColor,
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.r))),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 10.w,
                          ),
                          Container(
                            width: 50.w,
                            height: 50.h,
                            decoration: BoxDecoration(
                                color: AppColors.consultationColor2,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [Text("11"), Text("jan")],
                            ),
                          ),
                          SizedBox(
                            width: 15.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Consulatation",
                                style: TextStyle(
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 7.h,
                              ),
                              Row(
                                children: [
                                  Text("Tuesday"),
                                  SizedBox(
                                    width: 7.h,
                                  ),
                                  Text("9:00AM"),
                                  SizedBox(
                                    width: 7.h,
                                  ),
                                  Text("7:00PM"),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    CustomButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TimeSlot(),
                              ));
                        },
                        text: 'Book Appointment')
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
