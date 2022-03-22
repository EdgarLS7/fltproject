
import 'package:flt_project/widgets/widgets.dart';
import 'package:flutter/material.dart';

class TextFormScreen extends StatelessWidget {
   
  const TextFormScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'nombre'    : 'Edgar', 
      'apellido'  : 'Lopez',
      'email'     : 'sosa.edlo6@gmail.com',
      'contraseña': '123qweasdzxc',
      'role'      : 'Admin'
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('TextForm Fields'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric( horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                
                CustomInputField(
                  formProperty: 'nombre',
                  formValues: formValues,
                  keyboardType: TextInputType.name,
                  labelText: 'Nombre',
                  hintText: 'Nombre del Usuario',
                ),
          
                const SizedBox( height: 30 ),
          
                CustomInputField(
                  formProperty: 'apellido',
                  formValues: formValues,
                  keyboardType: TextInputType.name,
                  labelText: 'Apellido',
                  hintText: 'Apellido del Usuario',
                ),
          
                const SizedBox( height: 30 ),
          
                CustomInputField(
                  formProperty: 'email',
                  formValues: formValues,
                  keyboardType: TextInputType.emailAddress,
                  labelText: 'Correo',
                  hintText: 'Correo del Usuario',
                ),
          
                const SizedBox( height: 30 ),
          
                CustomInputField(
                  formProperty: 'contraseña',
                  formValues: formValues,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  labelText: 'Contraseña',
                  hintText: 'Contraseña del usuario',
                ),
          
                const SizedBox( height: 30 ),

                DropdownButtonFormField<String>(
                  items: const [
                    DropdownMenuItem(
                      value: 'Admin',
                      child: Text('Admin'),
                    ),
                    DropdownMenuItem(
                      value: 'Superuser',
                      child: Text('Superuser'),
                    ),
                    DropdownMenuItem(
                      value: 'Developer',
                      child: Text('Developer'),
                    ),
                    DropdownMenuItem(
                      value: 'Jr. Developer',
                      child: Text('Jr. Developer'),
                    ),
                  ],
                  onChanged: ( value ) {
                    print( value );
                    formValues['role'] = value ?? 'Admin';
                  }, 
                ),

                const SizedBox( height: 30 ),
          
                ElevatedButton(
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(
                      child: Text('Guardar')
                    )
                  ),
                  onPressed: () {

                    FocusScope.of(context).requestFocus( FocusNode() );

                    if ( !myFormKey.currentState!.validate() ){
                      print('Formulario no valido');
                      return;
                    }

                    //* imprimir valores del formulario
                    print(formValues);
                  }, 
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}

