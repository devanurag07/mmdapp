import 'package:get/state_manager.dart';
import 'package:mmdapp/model/appointmentModel.dart';

// var featchedAppointments = [
//   {
//     "name": "Aditya Paswan",
//     "date": "12/01/2023",
//     "category": "Dentist",
//     "time": "@10:00AM",
//     "invoice": "12345",
//     "amount": "250",
//   },
//   {
//     "name": "Anurag Shakya",
//     "date": "13/02/2023",
//     "category": "Orth0",
//     "time": "@10:00AM",
//     "invoice": "12345",
//     "amount": "350",
//   },
//   {
//     "name": "Nihal Sharma",
//     "date": "124/06/2023",
//     "category": "Heart",
//     "time": "@10:00AM",
//     "invoice": "12345",
//     "amount": "2000",
//   },
//   {
//     "name": "Ankit Manjhi",
//     "date": "1/11/2023",
//     "category": "Dentist",
//     "time": "@10:00AM",
//     "invoice": "12345",
//     "amount": "1000",
//   },
// ];

// class AppointmentController extends GetxController {
//   var appointment = [].obs;
//   getAppointment() async {
//     appointment.value = featchedAppointments;
//   }

//   @override
//   void onInit() {
//     super.onInit();
//   }

//   @override
//   void onClose() {}
// }

class AppointmentController extends GetxController {
  var appointmentsDetails = Rxn<AppointmentModel>();

  featchAppointmentDetails(String id) {
    appointmentsDetails.value = AppointmentModel(
        name: ["ADITYA PASWAN", "Anurag Shakya", "Nihal Sharma"],
        date: ["18/02/2023", "15/02/2023", "12/02/2003"],
        time: ["9:00 - 10:00", "8:00 - 9:00", "11:00 - 12:00"],
        category: ["Dentist", "Orthopedic ", "Heart"],
        amount: ["250", "300", "400"],
        invoice: ["1234", "9887", "678478"]);
  }
}
