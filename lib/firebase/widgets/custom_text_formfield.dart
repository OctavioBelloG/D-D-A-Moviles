//crear caja de texto personalizada
//SE PUEDE USAR PARA OTROS PROYECTOS
import 'package:flutter/material.dart';

class CustomTextFormfield extends StatelessWidget {

  

  final TextInputType inputType;
  final IconData icon;
  final String prop;
  final TextEditingController controller;
  final bool isMultiline;
  final bool isPassword;

  const CustomTextFormfield({super.key,
  required this.inputType,
  required this.icon,
  required this.prop,
  required this.controller,
  required this.isMultiline,
  required this.isPassword

  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: isMultiline ? 5 : 1,
      obscureText: isPassword,
      keyboardType: inputType,
      controller: controller,
      decoration: InputDecoration(
        hintText: 'ingrese $prop',
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: const Color.fromARGB(255, 69, 7, 97)),
          borderRadius: BorderRadius.circular(20.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color.fromARGB(255, 5, 96, 13)),
          borderRadius: BorderRadius.circular(20.0),
        ),
        suffix: Icon( icon),
      ),
      validator: (value){
        if(value!.isEmpty){
          return "campo requerido";
        }
        if(value.length > 30){
          return "limite exedido";
        }
        return null;
      }
    );
  }
}