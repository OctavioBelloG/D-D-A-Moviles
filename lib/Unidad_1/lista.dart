//CREAR LISTA DE CONTACTOS
import 'package:flutter/material.dart';

class ListaScreen extends StatelessWidget {
  const ListaScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Contactos")),
      body: ListView(
        //se recibe un clildren
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 15,
              backgroundColor: Colors.grey,
              child: Text("OB"),
            ),
            title: Text("Octavio Bello"),
            subtitle: Text("Estudiante y chambeador los fines de semana"),
            trailing: Icon(Icons.chevron_right),
          ),
          Divider(),
          ListTile(
            leading: CircleAvatar(
              radius: 15,
              backgroundColor: Colors.grey,
              child: Text("TA"),
            ),
            title: Text("Taviz"),
            subtitle: Text("Estudiante y chambeador los fines de semana"),
            trailing: Icon(Icons.chevron_right),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
      onPressed: (){}, 
      backgroundColor: Colors.purple,
      child: Text("+"),),
    );
  }
}
