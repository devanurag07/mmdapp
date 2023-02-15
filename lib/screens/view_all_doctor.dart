import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../components/doctor_component.dart';
import '../controller/homeController.dart';

class ViewAllDoctor extends StatelessWidget {
  const ViewAllDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    final doctorController = Get.put((DoctorController()));

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.blue,
            )),
        title: Text(
          "All Doctors",
          style: TextStyle(color: Colors.blue),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: FutureBuilder(
                  future: doctorController.featchDoctorDetails('1'),
                  builder:
                      (BuildContext context, AsyncSnapshot<String> snapshot) {
                    return ListView.separated(
                      separatorBuilder: (context, index) => const SizedBox(
                        height: 10,
                      ),
                      itemCount: 3,
                      itemBuilder: (context, index) => DoctorComponent(
                        name: doctorController.doctorDetails.value!.name[index],
                        url: doctorController.doctorDetails.value!.url[index],
                        ranking: doctorController
                            .doctorDetails.value!.ranking[index],
                        time: doctorController.doctorDetails.value!.time[index],
                        Category: doctorController
                            .doctorDetails.value!.category[index],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
