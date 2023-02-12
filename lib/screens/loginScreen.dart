import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../common/widget/custom_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 235, 235, 235),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Text(
                "Enter Your Mobie Number",
                style: TextStyle(fontSize: 20, color: Colors.blue),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 7,
                      ),
                      Text(
                        "+91",
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Image.asset("assets/dropdown.png"),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: TextFormField(
                          decoration: new InputDecoration(
                              hintText: "Moblie Number",
                              border: InputBorder.none),
                        ),
                      ),
                    ]),
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                "By continuing , you agree to our",
                style: TextStyle(color: Colors.black54, fontSize: 15),
              ),
              Text(
                "Terms & Conditions",
                style: TextStyle(color: Colors.blue, fontSize: 15),
              ),
              Spacer(),
              Spacer(),
              CustomButton(
                onPressed: () {},
                text: "Continue",
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
