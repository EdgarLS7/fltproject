import 'package:flt_project/models/models.dart';
import 'package:flt_project/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {

  static const initialRoute = '/home';

  static final menuOptions = <MenuOption>[
    // TODO: borrar home
    // esto sirve para las listas, para las rutas es suficiente con el map
    MenuOption(route: '/home', name: 'Home Screen', screen: const HomeScreen(), icon: Icons.home_sharp),
    MenuOption(route: '/listview1', name: 'listview1Screen', screen: const Listview1Screen(), icon: Icons.list_alt_sharp),
    MenuOption(route: '/listview2', name: 'listview2Screen', screen: const Listview2Screen(), icon: Icons.list_alt_sharp),
    MenuOption(route: '/alert', name: 'Alert Screen', screen: const AlertScreen(), icon: Icons.add_alert_outlined),
    MenuOption(route: '/card', name: 'Card Screen', screen: const CardScreen(), icon: Icons.credit_card),
  ];

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