
import 'package:flt_project/widgets/widgets.dart';
import 'package:flutter/material.dart';

class TextFormScreen extends StatelessWidget {
   
  const TextFormScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextForm Fields'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric( horizontal: 20, vertical: 10),
          child: Column(
            children: const [
              
              CustomInputField(
                keyboardType: TextInputType.name,
                labelText: 'Nombre',
                hintText: 'Nombre del Usuario',
              ),

              SizedBox( height: 30 ),

              CustomInputField(
                keyboardType: TextInputType.name,
                labelText: 'Apellido',
                hintText: 'Apellido del Usuario',
              ),

              SizedBox( height: 30 ),

              CustomInputField(
                keyboardType: TextInputType.emailAddress,
                labelText: 'Correo',
                hintText: 'Correo del Usuario',
              ),

              SizedBox( height: 30 ),

              CustomInputField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                labelText: 'Contraseña',
                hintText: 'Contraseña del usuario',
              ),
            ],
          ),
        ),
      )
    );
  }
}

