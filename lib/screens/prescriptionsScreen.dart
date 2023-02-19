import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mmdapp/controller/prescriptionController.dart';

import '../components/components.dart';
import '../controller/appointmentController.dart';

class PrescriptionsScreen extends StatelessWidget {
  static const String routeName = 'prescription';

  const PrescriptionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final prescriptionController = Get.put((PrescriptionController()));

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: Colors.blue,
            )),
        title: Text(
          "Prescriptions",
          style: TextStyle(color: Colors.blue),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Prescription",
              style: TextStyle(
                  fontSize: 20.sp,
                  color: Colors.blue,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              height: 2.h,
              width: 90.w,
              color: Colors.blue,
            ),
            SizedBox(
              height: 20.h,
            ),
            Expanded(
              child: FutureBuilder(
                  future: prescriptionController.featchPrescriptionDetails('1'),
                  builder:
                      (BuildContext context, AsyncSnapshot<String> snapshot) {
                    return Padding(
                      padding: const EdgeInsets.all(0),
                      child: ListView.separated(
                          separatorBuilder: (context, index) => SizedBox(
                                height: 10.h,
                              ),
                          itemCount: 3,
                          itemBuilder: (context, index) => Prescription(
                                // id: appointmentController
                                //     .appointmentsDetails.value!.invoice[index]
                                //     .toString(),
                                category: prescriptionController
                                    .prescriptionDetails.value!.category[index]
                                    .toString(),
                                name: prescriptionController
                                    .prescriptionDetails.value!.name[index]
                                    .toString(),
                                date: prescriptionController
                                    .prescriptionDetails.value!.date[index]
                                    .toString(),
                              )),
                    );
                  }),
            ),
          ],
        ),
      )),
    );
  }
}
