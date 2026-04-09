import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});
  //EN ESTE ESTA LA BARRA SUPERIOR Y SUS ELEMENTOS
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("Mis Experiencias"),
      centerTitle: true,
      backgroundColor: const Color.fromARGB(255, 134, 56, 202),
      foregroundColor: const Color.fromARGB(255, 255, 255, 255),
      actions: [
        IconButton(icon: Icon(Icons.search), onPressed: () {}),
        IconButton(icon: Icon(Icons.add), onPressed: () {}),
        // IconButton(icon: Icon(Icons.favorite), onPressed: () {}),
      ],
    );
  }
}
