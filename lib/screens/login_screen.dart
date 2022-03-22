import 'package:flt_project/provider/login_form_provider.dart';
import 'package:flt_project/ui/input_decorations.dart';
import 'package:flt_project/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
   
  const LoginScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ImageBackground (
        child: SingleChildScrollView(
          child: Column(
            children: [

              const SizedBox(height: 250,),

              FormContainer(
                child: Column(
                  children: [

                    const SizedBox( height: 10, ),
                    Text('Login', style: Theme.of(context).textTheme.headline4,),
                    const SizedBox( height: 30, ),
                    
                    ChangeNotifierProvider(
                      create: ( _ ) => LoginFormProvider(),
                      child: const _LoginForm(),
                    ),
                    

                  ]
                ),
              ),

              const SizedBox( height: 50,),
              const Text('IE Soluciones', style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold ))

            ],
          ),
        )
      ),
    );
  }
}

class _LoginForm extends StatelessWidget {
  const _LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final loginForm = Provider.of<LoginFormProvider>(context);

    return Form(
      key: loginForm.formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: [

          TextFormField(
            autocorrect: false,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecorations.authInputDecoration(
              hintText: 'edgar12@gmail.com',
              labelText: 'Correo Electronico',
              prefixIcon: Icons.alternate_email_rounded 
            ),
            onChanged: ( value ) => loginForm.email = value,
            validator: ( value ) {
              
              String pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
              RegExp regExp  = RegExp(pattern);

              return regExp.hasMatch(value ?? '')
                ? null
                : 'El dato ingresado no es un Correo';

            },

          ),

          const SizedBox( height: 30,),

          TextFormField(
            autocorrect: false,
            obscureText: true,
            keyboardType: TextInputType.text,
            decoration: InputDecorations.authInputDecoration(
              hintText: '*****',
              labelText: 'Contraseña',
              prefixIcon: Icons.lock_outline
            ),
            onChanged: ( value ) => loginForm.password = value,
            validator: ( value ) {
              
              return ( value != null && value.length >= 6 ) 
                ? null
                : 'La contraseña debe tener 6 caracteres';
                
            },
          ),

          const SizedBox( height: 30,),

          MaterialButton(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            disabledColor: Colors.grey,
            elevation: 0,
            color: Colors.deepPurple,
            child: Container(
              padding: const EdgeInsets.symmetric( horizontal: 80, vertical: 15),
              child: Text(
                loginForm.isLoading
                ? 'Espere'
                : 'Ingresar',
                style: const TextStyle ( color: Colors.white),
              ),
            ),
            onPressed: loginForm.isLoading ? null : () async {
              FocusScope.of(context).unfocus();

              if( !loginForm.isValidForm() ) return;

              loginForm.isLoading = true;

              await Future.delayed( const Duration(seconds: 2));

              loginForm.isLoading = false;

              Navigator.pushReplacementNamed(context, '/home');
            },
          )

        ]
      ),
    );
  }
}