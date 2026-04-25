import 'package:flutter/material.dart';
import 'package:flutter_application_1/firebase/models/response_auth.dart';
import 'package:flutter_application_1/firebase/services/auth_service.dart';
//import 'package:flutter_application_1/firebase/widgets/custom_text_formfield.dart';
import 'package:flutter_application_1/firebase/widgets/custom_text_formfield.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formkey = GlobalKey<FormState>();
  final txtCorreoController = TextEditingController();
  final txtPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login"),),
      body: SingleChildScrollView(
        child: Form(child: Padding
        (padding: const 
          EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(radius: 100,),
              SizedBox(height: 30),
              
              CustomTextFormfield(
                inputType: TextInputType.emailAddress,
                icon: Icons.email,
                prop: "Correo",
                controller: txtCorreoController,
                isMultiline: false,
                isPassword: true
              ),

              OutlinedButton(onPressed: () async {
                ResponseAuth auth = await Login(
                  txtCorreoController.text,
                  txtPasswordController.text);
                  print(auth.codigo);
                  if(!context.mounted) return;
                  if(auth.codigo == 200){
                    Navigator.of(
                      context,
                      ).pushNamedAndRemoveUntil('/listAlumnos', (route) => false);
                  }
                  else {
                    SmartDialog.showNotify(
                      msg: auth.mensaje,
                      notifyType: NotifyType.error,
                    );
                  }
              }
              , child: Text("Iniciar Sesión")),

            ]),
          )
        ),
      )
    );
  }
}