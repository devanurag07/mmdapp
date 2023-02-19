import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mmdapp/common/widget/custom_button.dart';
import 'package:mmdapp/components/calender.dart';
import 'package:mmdapp/screens/booking_summary.dart';

class TimeSlot extends StatefulWidget {
  const TimeSlot({super.key});

  @override
  State<TimeSlot> createState() => _TimeSlotState();
}

class _TimeSlotState extends State<TimeSlot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.blue,
            )),
        title: Text(
          "Select a Time Slot",
          style: TextStyle(color: Colors.blue),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 75,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: kElevationToShadow[2],
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/dummy_image.png'),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Dr.Arun Srinivas',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        Row(
                          children: [
                            Image.asset('assets/dentist.png'),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Dentist',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Januray",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
                Text(
                  "February",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
                Text(
                  "March",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 100,
              child: ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(
                  width: 15,
                ),
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (BuildContext context, index) =>
                    Calender(date: '10', day: 'MON'),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Available Slots: Wed, 12 January, 2022",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 20,
            ),
            GridView.builder(
              itemCount: 12,
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 20,
                  mainAxisExtent: 40,
                  mainAxisSpacing: 20),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  width: 100,
                  height: 30,
                  color: Colors.blue,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("10:00"),
                  ),
                );
              },
            ),
            SizedBox(
              height: 150,
            ),
            CustomButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BookingSummary(),
                      ));
                },
                text: 'Proceed')
          ],
        ),
      ),
    );
  }
}
