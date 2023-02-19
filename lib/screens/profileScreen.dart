import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mmdapp/controller/profileController.dart';

import '../utils/global_variable.dart';

class ProfileScreen extends StatefulWidget {
  static const String routeName = 'profile';

  // late String name;
  // late String number;
  // late String email;
  // late String gender;
  // late String dateOdBirth;
  // late String bloodGroup;
  // late String weight;

  const ProfileScreen({
    super.key,
    // required this.name,
    // required this.number,
    // required this.email,
    // required this.gender,
    // required this.dateOdBirth,
    // required this.bloodGroup,
    // required this.weight,
  });

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final profileController = Get.put((ProfileController()));

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: Colors.blue,
            )),
        title: Text(
          "Profile",
          style: TextStyle(color: Colors.blue),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: FutureBuilder(
          future: profileController.featchProfileDetails('1'),
          builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
            return SafeArea(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        child: Image.asset("assets/dummy_image.png"),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Column(
                        children: [
                          Text(
                            profileController.profileDetails.value!.name,
                            style: TextStyle(
                                color: AppColors.mainColor,
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 15.w,
                          ),
                          Text(
                            profileController.profileDetails.value!.number,
                            style: TextStyle(fontSize: 16),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Email Id",
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.darkTextColor),
                      ),
                      Text(
                        profileController.profileDetails.value!.email,
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Divider(
                    thickness: 1,
                    height: 2,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Gender",
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.darkTextColor),
                      ),
                      Text(
                        profileController.profileDetails.value!.gender,
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Divider(
                    thickness: 1,
                    height: 2,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Date Of Birth",
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.darkTextColor),
                      ),
                      Text(
                        profileController.profileDetails.value!.dateOfBirth,
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Divider(
                    thickness: 1,
                    height: 2,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Blood Group",
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.darkTextColor),
                      ),
                      Text(
                        "${profileController.profileDetails.value!.bloodGroup}+ve",
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Divider(
                    thickness: 1,
                    height: 2,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Weight",
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.darkTextColor),
                      ),
                      Text(
                        "${profileController.profileDetails.value!.weight}Kg",
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Divider(
                    thickness: 1,
                    height: 2,
                  ),
                  SizedBox(
                    height: 70.h,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/icons/logout.svg"),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        "LogOut",
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      )
                    ],
                  )
                ],
              ),
            ));
          }),
    );
  }
}
