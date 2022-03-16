import 'package:flt_project/screens/screens.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes Flutter'),
        elevation: 5,
        backgroundColor: Colors.indigo,
      ),
      body: ListView.separated(
        itemBuilder: ( _ , __ ) => ListTile(
          leading: const Icon(Icons.accessible_forward_outlined),
          title: const Text('Nombre de la Ruta'),
          onTap: () {
            // final route = MaterialPageRoute(
            //   builder: (context) => const Listview2Screen(),
            // );
            // Navigator.push(context, route);

            Navigator.pushNamed(context, '/alert');
          },
        ), 
        separatorBuilder: ( _, __ ) => const Divider(), 
        itemCount: 10)
    );
  }
}