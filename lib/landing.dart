import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:mmdapp/screens/appoinmentsScreen.dart';
import 'package:mmdapp/screens/homePage.dart';
import 'package:mmdapp/screens/prescriptionsScreen.dart';
import 'package:mmdapp/screens/profileScreen.dart';

class LandingScreen extends StatefulWidget {
  final String subRoute;
  static const String routeName = '/landing/';
  const LandingScreen({super.key, required this.subRoute});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  // final authController = Get.put((AuthController()));
  // final prevRoute = Get.previousRoute;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        if (widget.subRoute == HomePage.routeName) {
          return HomePage();
        } else if (widget.subRoute == AppoinmentsScreen.routeName) {
          return const AppoinmentsScreen();
        } else if (widget.subRoute == PrescriptionsScreen.routeName) {
          return const PrescriptionsScreen();
        } else if (widget.subRoute == ProfileScreen.routeName) {
          return const ProfileScreen();
        } else {
          return const Center(child: Text('No page found!'));
        }
      }),
      bottomNavigationBar: BottomAppBar(
        color: Color.fromARGB(255, 221, 221, 221),
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Image.asset("assets/home.png"),
              onPressed: () {
                Navigator.pushReplacementNamed(
                    context, '/landing/${HomePage.routeName}');
              },
            ),
            IconButton(
                icon: Image.asset("assets/appointment.png"),
                onPressed: () {
                  Navigator.pushReplacementNamed(
                      context, '/landing/${AppoinmentsScreen.routeName}');
                }),
            IconButton(
                icon: Image.asset("assets/prescription.png"),
                onPressed: () {
                  Navigator.pushReplacementNamed(
                      context, '/landing/${PrescriptionsScreen.routeName}');
                }),
            IconButton(
                icon: Image.asset("assets/profile.png"),
                onPressed: () {
                  Navigator.pushReplacementNamed(
                      context, '/landing/${ProfileScreen.routeName}');
                })
          ],
        ),
      ),
    );
  }
}
