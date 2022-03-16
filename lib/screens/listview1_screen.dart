import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {

  final opciones = const ['Megaman', 'Metal Gear', 'Super Smash', 'Final Fantasy',];
   
  const Listview1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Tipo 1'),
      ),
      body: ListView(
        children: [
          
          ...opciones.map(
            (juegos) => ListTile(
              title: Text(juegos),
              trailing: const Icon(Icons.arrow_forward_ios_outlined),
            )
          ).toList()
        ],
      )
    );
  }
}