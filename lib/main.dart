import 'package:flutter/material.dart';
import 'package:mmdapp/landing.dart';
import 'package:mmdapp/router.dart';
import 'package:mmdapp/screens/homePage.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:mmdapp/screens/loginScreen.dart';
import 'package:mmdapp/screens/name.dart';
import 'package:mmdapp/screens/otp.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 640),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          onGenerateRoute: (settings) =>
              genarateRoute(settings), // auto genarating routes
          home: AnimatedSplashScreen(
            splash: Center(
              child: Image.asset("assets/logo.png"),
            ),
            duration: 3000,
            nextScreen: const LandingScreen(
              subRoute: 'home',
            ),
          )),
    );
  }
}
