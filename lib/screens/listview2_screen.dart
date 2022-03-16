import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {

  final opciones = const ['Megaman', 'Metal Gear', 'Super Smash', 'Final Fantasy',];
   
  const Listview2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Tipo 2'),
      ),
      body: ListView.separated(
        itemBuilder     : (context, index) => ListTile(
          title: Text(opciones[index]),
          trailing: const Icon(Icons.arrow_forward_ios_outlined),
          onTap: () {

          },
        ), 
        separatorBuilder: ( _ , __ ) => const Divider(), 
        itemCount       : opciones.length,
      )
    );
  }
}