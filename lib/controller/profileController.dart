import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../model/prescriptionModel.dart';
import '../model/profileModel.dart';

class ProfileController extends GetxController {
  var profileDetails = Rxn<ProfileModel>();

  featchProfileDetails(String id) {
    profileDetails.value = ProfileModel(
        name: "Aditya Paswan",
        bloodGroup: "A+",
        dateOfBirth: "16-08-2023",
        email: "adityapaswan@gmail.com",
        gender: "Male",
        number: "+91079653475687",
        weight: "89 ");
  }
}
