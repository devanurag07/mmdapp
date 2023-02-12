import 'package:flutter/material.dart';

class AppoinmentsScreen extends StatefulWidget {
  static const String routeName = 'appoinments';

  const AppoinmentsScreen({super.key});

  @override
  State<AppoinmentsScreen> createState() => _AppoinmentsScreenState();
}

class _AppoinmentsScreenState extends State<AppoinmentsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Appominents")),
    );
  }
}
