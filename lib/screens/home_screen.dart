import 'package:flt_project/router/app_routes.dart';
import 'package:flt_project/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes Flutter'),
      ),
      body: ListView.separated(
        itemBuilder: ( context , index ) => ListTile(
          leading:  Icon(menuOptions[index].icon, color: AppTheme.primary),
          title:  Text(menuOptions[index].name),
          onTap: () {
            // final route = MaterialPageRoute(
            //   builder: (context) => const Listview2Screen(),
            // );
            // Navigator.push(context, route);

            Navigator.pushNamed(context, menuOptions[index].route);
          },
        ), 
        separatorBuilder: ( _, __ ) => const Divider(), 
        itemCount: menuOptions.length)
    );
  }
}