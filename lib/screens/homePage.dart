import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mmdapp/controller/homeController.dart';

import '../components/doctor_component.dart';

class HomePage extends StatefulWidget {
  static const String routeName = 'home';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final doctorController = Get.put((DoctorController()));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          children: [
            // first element
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Text(
                      "Aditya Paswan ,",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      "Delhi",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Image.asset("assets/dropdown_blue.png")
                  ],
                ),
                Image.asset("assets/notification.png")
              ],
            ),
            // search
            const SizedBox(height: 20),
            const CupertinoSearchTextField(),

            // Top Doctors

            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Top Doctors",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
                GestureDetector(
                  onTap: () => print('clicked'),
                  child: const Text(
                    "View All",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue),
                  ),
                )
              ],
            ),

            FutureBuilder(
                future: doctorController.featchDoctorDetails('1'),
                builder:
                    (BuildContext context, AsyncSnapshot<String> snapshot) {
                  return DoctorComponent(
                    name: doctorController.doctorDetails.value!.name,
                    url: doctorController.doctorDetails.value!.url,
                    ranking: doctorController.doctorDetails.value!.ranking,
                    time: doctorController.doctorDetails.value!.time,
                    Category: doctorController.doctorDetails.value!.category,
                  );
                }),
          ],
        ),
      )),
    );
  }
}
