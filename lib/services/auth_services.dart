import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AuthService extends ChangeNotifier{

  final String _baseUrl       = 'identitytoolkit.googleapis.com';
  final String _firebaseToken = 'AIzaSyCrAT-lPgnP1WItmwRlKqi8tNuSNUQQl8I';

  //POST
  Future<String?> createUser ( String email, String password ) async {

    //Lo que mando a la peticion POST
    final Map<String, dynamic> authData = {
      'email'    : email,
      'password' : password
    };

    final url = Uri.https( _baseUrl, '/v1/accounts:signUp', {
      'key': _firebaseToken
    });

    final respuesta = await http.post(url, body: json.encode(authData));
    final Map<String, dynamic> decodedResp = json.decode(respuesta.body);

    print ( decodedResp );
  }

}