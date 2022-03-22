import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final TextInputType? keyboardType;
  final IconData? suffixIcon;
  final bool? obscureText;
  
  const CustomInputField({
    Key? key, 
    this.hintText, 
    this.labelText, 
    this.helperText, 
    this.keyboardType, 
    this.suffixIcon, 
    this.obscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      autofocus: false,
      textCapitalization: TextCapitalization.words,
      onChanged: ( value ) {
        print('value: $value');
      },
      validator: (value) {
        if ( value == null ) return 'Este campo es requerido';
        return value.length < 3 ? 'Minimo de 3 letras' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
       
        //icono al final
        suffixIcon: suffixIcon == null ? null 
          : Icon( suffixIcon )

        // icono al principio
        // prefixIcon: Icon(Icons.smoke_free_outlined),
       
        // Al principio y recorre el textform
        // icon: Icon(Icons.abc_rounded)
      ),
    );
  }
}