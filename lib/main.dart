import 'package:flt_project/screens/screens.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: '/home',
      routes: {
        '/home'     : ( _ ) => const HomeScreen(), 
        '/listview1': ( _ ) => const Listview1Screen(), 
        '/listview2': ( _ ) => const Listview2Screen(), 
        '/alert'    : ( _ ) => const AlertScreen(), 
        '/card'     : ( _ ) => const CardScreen(),
      },
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => const AlertScreen(),
        );
      },
    );
  }
}