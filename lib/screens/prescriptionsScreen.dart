import 'package:flutter/material.dart';

class PrescriptionsScreen extends StatefulWidget {
  static const String routeName = 'prescriptions';

  const PrescriptionsScreen({super.key});

  @override
  State<PrescriptionsScreen> createState() => _PrescriptionsScreenState();
}

class _PrescriptionsScreenState extends State<PrescriptionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Prescriptions")),
    );
  }
}
