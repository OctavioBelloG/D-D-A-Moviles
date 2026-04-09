import 'package:flutter/material.dart';

class FilasScreen extends StatelessWidget {
  const FilasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ejemplo filas")),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.key, size: 30, color: const Color.fromARGB(255, 57, 39, 176)),
          Icon(Icons.phone, size: 30, color: const Color.fromARGB(255, 120, 23, 138)),
        ],
      ),
    );
  }
}
