import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Calender extends StatelessWidget {
  final String date;
  final String day;

  const Calender({super.key, required this.date, required this.day});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 50,
        height: 100,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black38),
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(day),
              const SizedBox(
                height: 10,
              ),
              Text(
                date,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(Radius.circular(50))),
              )
            ]));
  }
}
