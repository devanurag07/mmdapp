import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:mmdapp/model/homeModel.dart';

class DoctorController extends GetxController {
  var doctorDetails = Rxn<DoctorModel>();

  featchDoctorDetails(String id) {
    doctorDetails.value = DoctorModel(
        name: "ADITYA PASWAN",
        ranking: 4.5,
        time: "9:00 - 10:00",
        category: "Dentist",
        url: "assets/dummy_image.png");
  }
}
