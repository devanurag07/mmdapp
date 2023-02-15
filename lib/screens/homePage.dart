import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mmdapp/components/category_component.dart';
import 'package:mmdapp/controller/homeController.dart';
import 'package:mmdapp/screens/doctor_profile.dart';
import 'package:mmdapp/screens/view_all_doctor.dart';

import '../components/doctor_component.dart';
import '../utils/global_variable.dart';

class HomePage extends StatefulWidget {
  static const String routeName = 'home';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final doctorController = Get.put((DoctorController()));
  final categoryController = Get.put((CategoryController()));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // first element
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      "Aditya Paswan ,",
                      style: TextStyle(
                          fontSize: 17.sp, fontWeight: FontWeight.w600,color: AppColors.textColor),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      "Delhi",
                      style: TextStyle(
                          fontSize: 17.sp, fontWeight: FontWeight.w600,
                          color: AppColors.textColor),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Image.asset("assets/dropdown_blue.png")
                  ],
                ),
                SvgPicture.asset("assets/icons/notification.svg")
              ],
            ),
            // search
            SizedBox(height: 20.h),
            CupertinoSearchTextField(),

            // Top Doctors

            SizedBox(
              height: 10.h,
            ),

            Text("Categories"),
            SizedBox(
              height: 30.h,
            ),
            SizedBox(
              height: 120,
              child: Expanded(
                child: FutureBuilder(
                    future: categoryController.featchCategoryDetails('1'),
                    builder:
                        (BuildContext context, AsyncSnapshot<String> snapshot) {
                      return ListView.separated(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        separatorBuilder: (context, index) => SizedBox(
                          width: 15.w,
                        ),
                        itemCount: 3,
                        itemBuilder: (context, index) => CategoryComponent(
                          title: categoryController
                              .categoryDetails.value!.title[index],
                          url: categoryController
                              .categoryDetails.value!.url[index],
                          color: categoryController
                              .categoryDetails.value!.color[index],
                        ),
                      );
                    }),
              ),
            ),

            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Top Doctors",
                  style:
                      TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500,color: AppColors.lightTextColor),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ViewAllDoctor(),
                        ));
                  },
                  child: Text(
                    "View All",
                    style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10.h,
            ),

            Expanded(
              child: FutureBuilder(
                  future: doctorController.featchDoctorDetails('1'),
                  builder:
                      (BuildContext context, AsyncSnapshot<String> snapshot) {
                    return ListView.separated(
                      separatorBuilder: (context, index) => SizedBox(
                        height: 10.h,
                      ),
                      itemCount: 3,
                      itemBuilder: (context, index) => GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DoctorProfile()));
                        },
                        child: DoctorComponent(
                          name:
                              doctorController.doctorDetails.value!.name[index],
                          url: doctorController.doctorDetails.value!.url[index],
                          ranking: doctorController
                              .doctorDetails.value!.ranking[index],
                          time:
                              doctorController.doctorDetails.value!.time[index],
                          Category: doctorController
                              .doctorDetails.value!.category[index],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      )),
    );
  }
}
