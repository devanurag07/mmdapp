import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DoctorComponent extends StatelessWidget {
  final url;
  final ranking;
  final time;
  final Category;
  final name;
  const DoctorComponent(
      {super.key, this.url, this.ranking, this.time, this.Category, this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(url),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                    Row(
                      children: [
                        Image.asset("assets/dentist.png"),
                        Text(
                          Category,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.blue),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset("assets/time.png"),
                        Text(
                          time,
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Row(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/star.png"),
              Text(ranking.toString())
            ],
          )
        ],
      ),
    );
  }
}
