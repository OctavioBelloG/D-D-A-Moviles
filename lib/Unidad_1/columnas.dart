import 'package:flutter/material.dart';


class ColumnasScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
    appBar: AppBar(title: Text("Ejemplo columnas")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [Text("Texto1"), Text("Texto2"), Text("Texto3")],
      ),
    );
  }
}