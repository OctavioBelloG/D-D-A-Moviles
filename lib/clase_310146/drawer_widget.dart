import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer( //indicar al scaffold que es un menu oculto //panel de izquierda a derecha
      child: ListView(//
        children: [
          UserAccountsDrawerHeader( 
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [const Color.fromARGB(255, 255, 255, 255), const Color.fromARGB(255, 0, 255, 34), const Color.fromARGB(255, 16, 139, 0)]
              ), //color de fondo
            ),
            accountName: Text(
              "Ing. Octavio Atractivo Galindo",
              style: TextStyle(color: Colors.black),
            ),
            accountEmail: Text(
              "empPuxtla@gmail.com",
              style: TextStyle(color: Colors.black),
            ),
            currentAccountPicture: CircleAvatar( //circulo que muestra texto o imagen del usuario
              backgroundColor: Colors.green[900],//color del icono
              foregroundColor: Colors.white, //color del texto
              child: Text("Ing"), //texto dentro del circulo
            ),
            otherAccountsPictures: [FlutterLogo()], //otros iconos o imagenes adicionales
          ),
          ListTile(
            title: Text("Inicio"),
            leading: Icon(Icons.home), //icono al inicio del texto
            onTap: () => cerrar(context), //cerrar el drawer al presionar
          ),
          ListTile(
            title: Text("Transacciones"),
            leading: Icon(Icons.add),
            onTap: () => cerrar(context),
          ),
          ListTile(
            title: Text("Buscar"),
            leading: Icon(Icons.search),
            onTap: () => cerrar(context),
          ),
          Divider(), //linea divisoria entre opciones
          ListTile(
            title: Text("Cerrar Sesión"),
            leading: Icon(Icons.logout),
            onTap: () => cerrar(context),
          ),
        ],
      ),
    );
  }

  cerrar(context) {
    Navigator.pop(context);
  }
}
