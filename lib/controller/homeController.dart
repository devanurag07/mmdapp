import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import 'package:mmdapp/model/homeModel.dart';

class DoctorController extends GetxController {
  var doctorDetails = Rxn<DoctorModel>();

  featchDoctorDetails(String id) {
    doctorDetails.value = DoctorModel(name: [
      "ADITYA PASWAN",
      "Anurag Shakya",
      "Nihal Sharma"
    ], ranking: [
      4.5,
      5.0,
      3.0
    ], time: [
      "9:00 - 10:00",
      "8:00 - 9:00",
      "11:00 - 12:00"
    ], category: [
      "Dentist",
      "Orthopedic ",
      "Heart"
    ], url: [
      "assets/icons/dummy_image.svg",
      "assets/icons/dummy_image2.svg",
      "assets/icons/dummy_image.svg"
    ]);
  }
}

class CategoryController extends GetxController {
  var categoryDetails = Rxn<CategoryModel>();

  featchCategoryDetails(String id) {
    categoryDetails.value = CategoryModel(title: [
      "General Physicians",
      "Cardio Surgeons",
      "Eye Specialist"
    ], url: [
      "assets/icons/noun-stethoscope-50094.svg",
      "assets/icons/heart.svg",
      "assets/icons/eye.svg"
    ], color: [
      Colors.blue,
      Colors.yellow,
      Colors.red
    ]);
  }
}

class SummaryController extends GetxController {
  var summaryDetails = Rxn<SummaryModel>();
  DateTime now = DateTime.now();
  featchSummaryDetails(String id) {
    summaryDetails.value = SummaryModel(
      date: DateFormat('dd MMM yyyy').format(now),
      time: DateFormat("hh:mm").format(now),
      fee1: '250',
      fee2: "50",
    );
  }
}
