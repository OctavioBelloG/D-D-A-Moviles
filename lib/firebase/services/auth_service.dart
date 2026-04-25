
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/firebase/models/response_auth.dart';

FirebaseAuth auth = FirebaseAuth.instance;


// ignore: non_constant_identifier_names
Future<ResponseAuth> Login(String email, String pdw) async {
  try{
    UserCredential credenciales = await
    auth.signInWithEmailAndPassword
    (email: email, password: pdw);
    return ResponseAuth(codigo: 200, mensaje: "Autenticación exitosa");
                                       
  } on FirebaseAuthException catch (e){
    if(e.code == 'user-not-fount'||e.code == 'Wrong-password'){
      return ResponseAuth(
        codigo: 400,
        mensaje: "Usuario o contraseña incorrectos >:v");
    }else {
      return ResponseAuth(
        mensaje: "Error desconocido, intente de nuevo", codigo: 500);
    }
  };
}