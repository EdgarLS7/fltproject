import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIOS( BuildContext context ) {
    
    showCupertinoDialog(
      barrierDismissible: false,
      context: context, 
      builder: ( context ) {
        return CupertinoAlertDialog(
          title: const Text('Titulo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Este es el contenido de la alerta'),
              SizedBox( height: 10,),
              FlutterLogo( size: 70,)
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cerrar', style: TextStyle( color: Colors.red),)
            ),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Ok')
            ),
          ],
        );
      }
    );
  } 

  void displayDialogAndroid( BuildContext context ) {

    showDialog(
      barrierDismissible: false,
      context: context, 
      builder: (context) {
        return AlertDialog(
          elevation: 5,
          title: const Text('Titulo'),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Este es el contenido de la alerta'),
              SizedBox( height: 10,),
              FlutterLogo( size: 70,)
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cerrar')
            ),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Ok')
            ),
          ],
        );
      }
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AlerScreen'),
      ),
      body: Center(
         child: ElevatedButton(
           child: const Padding(
             padding: EdgeInsets.all(10),
             child: Text('Mostrar Alerta', style: TextStyle( fontSize: 18),),
           ),
          //  onPressed: () => displayDialogAndroid(context),
          onPressed: () => Platform.isAndroid 
            ? displayDialogAndroid(context)
            : displayDialogIOS(context)
         )
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon( Icons.close ),
        onPressed: () => Navigator.pop(context)
      ),
    );
  }
}