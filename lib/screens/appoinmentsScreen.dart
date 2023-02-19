import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mmdapp/controller/appointmentController.dart';

import '../components/components.dart';

class AppoinmentsScreen extends StatefulWidget {
  static const String routeName = 'appoinments';

  const AppoinmentsScreen({super.key});

  @override
  State<AppoinmentsScreen> createState() => _AppoinmentsScreenState();
}

class _AppoinmentsScreenState extends State<AppoinmentsScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  int _selectedIndex = 0;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);

    _tabController.addListener(() {
      setState(() {
        _selectedIndex = _tabController.index;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final appointmentController = Get.put((AppointmentController()));

    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back,
                color: Colors.blue,
              )),
          title: Text(
            "Appoinment",
            style: TextStyle(color: Colors.blue),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                height: 50,
                child: TabBar(
                    dividerColor: Colors.black,
                    indicatorPadding: EdgeInsets.symmetric(horizontal: 60),
                    controller: _tabController,
                    tabs: [
                      Text(
                        "Upcomming",
                        style: TextStyle(color: Colors.black),
                      ),
                      Text(
                        "Past Booking",
                        style: TextStyle(color: Colors.black),
                      ),
                    ]),
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  Expanded(
                    child: FutureBuilder(
                        future:
                            appointmentController.featchAppointmentDetails('1'),
                        builder: (BuildContext context,
                            AsyncSnapshot<String> snapshot) {
                          return Padding(
                            padding: const EdgeInsets.all(20),
                            child: ListView.separated(
                                separatorBuilder: (context, index) => SizedBox(
                                      height: 10.h,
                                    ),
                                itemCount: 3,
                                itemBuilder:
                                    (context, index) =>
                                        UpcomingComponent(
                                            date: appointmentController
                                                .appointmentsDetails
                                                .value!
                                                .date[index]
                                                .toString(),
                                            category: appointmentController
                                                .appointmentsDetails
                                                .value!
                                                .category[index]
                                                .toString(),
                                            name: appointmentController
                                                .appointmentsDetails
                                                .value!
                                                .name[index]
                                                .toString(),
                                            time: appointmentController
                                                .appointmentsDetails
                                                .value!
                                                .time[index]
                                                .toString())),
                          );
                        }),
                  ),
                  Expanded(
                    child: FutureBuilder(
                        future:
                            appointmentController.featchAppointmentDetails('1'),
                        builder: (BuildContext context,
                            AsyncSnapshot<String> snapshot) {
                          return Padding(
                            padding: const EdgeInsets.all(20),
                            child: ListView.separated(
                                separatorBuilder: (context, index) => SizedBox(
                                      height: 10.h,
                                    ),
                                itemCount: 3,
                                itemBuilder: (context, index) => PastBooking(
                                    invoice: appointmentController
                                        .appointmentsDetails
                                        .value!
                                        .invoice[index]
                                        .toString(),
                                    category: appointmentController
                                        .appointmentsDetails
                                        .value!
                                        .category[index]
                                        .toString(),
                                    name: appointmentController
                                        .appointmentsDetails.value!.name[index]
                                        .toString(),
                                    amount: appointmentController
                                        .appointmentsDetails
                                        .value!
                                        .amount[index]
                                        .toString())),
                          );
                        }),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
