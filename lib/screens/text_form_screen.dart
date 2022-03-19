
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
            children: [
              
              TextFormField(
                autofocus: false,
                // initialValue: 'Edgar Lopez',
                textCapitalization: TextCapitalization.words,
                onChanged: ( value ) {
                  print('value: $value');
                },
                validator: (value) {
                  if ( value == null ) return 'Este campo es requerido';
                  return value.length < 3 ? 'Minimo de 3 letras' : null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: const InputDecoration(
                  hintText: 'Nombre del usuario',
                  labelText: 'Nombre',
                  helperText: 'Solo letras perro',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.only( 
                      bottomLeft: Radius.circular(10),
                      topRight: Radius.circular(10)
                    )
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green
                    )
                  ) ,

                  //final
                  suffixIcon: Icon(Icons.group_outlined),

                  // icono al principio
                  // prefixIcon: Icon(Icons.smoke_free_outlined),
                  // -----------------------------------------------
                  // Al principio y recorre el textform
                  // icon: Icon(Icons.abc_rounded)
                ),
              )

            ],
          ),
        ),
      )
    );
  }
}