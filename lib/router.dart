import 'package:flutter/material.dart';
import 'package:mmdapp/landing.dart';

Route<dynamic> genarateRoute(RouteSettings routeSettings) {
  //  NOTE : auth routes, home flow ke routes ko alg alg file me bnakr idhr combine krna ha
  final List<String> path = routeSettings.name!.split('/');

  if (routeSettings.name!.contains(LandingScreen.routeName)) {
    return MaterialPageRoute(
      settings: routeSettings,
      builder: (_) => LandingScreen(subRoute: path[2]),
    );
    // } else if (routeSettings.name!.contains(BatchEdit.routeName)) {
    //   return PageRouteBuilder(
    //     settings: routeSettings,
    //     pageBuilder: (_, __, ___) => BatchEdit(id: path[3]),
    //   );
    // } else if (routeSettings.name!.contains(BatchScreen.routeName)) {
    //   return MaterialPageRoute(
    //     settings: routeSettings,
    //     builder: (_) => BatchScreen(id: path[2]),
    //   );
  }

  switch (routeSettings.name) {
    // case LoginScreen.routeName:
    //   return PageRouteBuilder(
    //     settings: routeSettings,
    //     pageBuilder: (_, __, ___) => const LoginScreen(),
    //   );

    // case SignupScreen.routeName:
    //   return PageRouteBuilder(
    //     settings: routeSettings,
    //     pageBuilder: (_, __, ___) => const SignupScreen(),
    //   );

    // case RequestsToJoin.routeName:
    //   return MaterialPageRoute(
    //     settings: routeSettings,
    //     builder: (_) => const RequestsToJoin(),
    //   );
    // case UnAuthorizedScreen.routeName:
    //   return MaterialPageRoute(
    //     settings: routeSettings,
    //     builder: (_) => const UnAuthorizedScreen(),
    //   );

    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text('Screen does not exist!'),
          ),
        ),
      );
  }
}
