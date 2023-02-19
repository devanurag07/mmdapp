import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../model/prescriptionModel.dart';

class PrescriptionController extends GetxController {
  var prescriptionDetails = Rxn<PrescriptionModel>();

  featchPrescriptionDetails(String id) {
    prescriptionDetails.value = PrescriptionModel(
        name: ["ADITYA PASWAN", "Anurag Shakya", "Nihal Sharma"],
        date: ["18/02/2023", "15/02/2023", "12/02/2003"],
        category: ["Dentist", "Orthopedic ", "Heart"],
        id: ["1", "2", "3"]);
  }
}
