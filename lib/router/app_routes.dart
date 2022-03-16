import 'package:flt_project/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {

  static const initialRoute = '/home';

  static Map<String, Widget Function(BuildContext)> routes = {
    '/home'     : ( _ ) => const HomeScreen(), 
    '/listview1': ( _ ) => const Listview1Screen(), 
    '/listview2': ( _ ) => const Listview2Screen(), 
    '/alert'    : ( _ ) => const AlertScreen(), 
    '/card'     : ( _ ) => const CardScreen(),
  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }

}