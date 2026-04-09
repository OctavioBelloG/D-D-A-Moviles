import 'package:flutter/material.dart';

class StyleWidget extends StatelessWidget {
  const StyleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      //Centra el contenido de manera vertical y horizontal
      child: Text( 
        "Aplicaciones moviles",
        style: TextStyle(
          fontSize: 20,
          color: Colors.red,
          fontWeight: FontWeight.bold,
          backgroundColor: Colors.blue,
        ),
      ),
    );
  }
}
