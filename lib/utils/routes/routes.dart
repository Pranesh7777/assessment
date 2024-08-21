
import 'package:assessment/utils/routes/routesname.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../view/home_screen.dart';



class Routes {

  //settings accept string parameter
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.home:
        return MaterialPageRoute(
            builder: (BuildContext context) =>  HomeScreen());

      default:
        return MaterialPageRoute(
            builder: (BuildContext context) => const Scaffold(
                  body: Center(
                    child: Text("No route defined"),
                  ),
                ));
    }
  }
}
