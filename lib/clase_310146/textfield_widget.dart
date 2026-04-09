import 'package:flutter/material.dart';

class TextfieldWidget extends StatelessWidget {
  const TextfieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(), //campo de texto basico
          SizedBox(height: 40), //espacio entre widgets del alto
          Container( //contenedor para agregar padding para expandirse a otros elementos
            padding: EdgeInsets.symmetric(horizontal: 20),  //tamaño
            child: TextField( //campo de texto
              decoration: InputDecoration( //decoracion del campo de texto
                enabledBorder: OutlineInputBorder( //cambia el borde cuando esta seleccionado
                  borderSide: BorderSide(color: Colors.red),//cambia el borde cuando no esta seleccionado
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),//borde redondeado
                ),
                focusedBorder: OutlineInputBorder( 
                  borderSide: BorderSide(color: Colors.red),
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                ),
                prefixIcon: Icon(Icons.vpn_key_outlined), //icono al inicio del campo de texto
                hintText: "Contraseña", //texto de sugerencia 
                filled: true, //indica que el campo de texto estara relleno
                fillColor: Colors.grey[200],//color de relleno
              ),
            ),
          ),
          SizedBox(height: 50), //caja de texto con espacio invisible
          Container( //contenedor para agregar padding para expandirse a otros elementos
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                ),
                prefixIcon: Icon(Icons.vpn_key_outlined),
                hintText: "Contraseña",
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
          ),
          SizedBox(height: 50),
          Divider(),
          Padding( // para agregar espacio alrededor del TextField
            padding: const EdgeInsets.all(8.0),//espacio alrededor del textfield
            child: TextField( //campo de texto
              decoration: InputDecoration(//decoracion del campo de texto
                border: OutlineInputBorder(//borde del campo de texto
                  borderRadius: BorderRadius.circular(20.0),//borde redondeado
                ),
                counter: Text('Letras 0'),//contador de letras
                hintText: "00TE0000",//texto de sugerencia
                labelText: "Número de control",//etiqueta del campo de texto
                helperText: "Ingrese su número de control",//texto de ayuda debajo del campo de texto
                suffixIcon: Icon(Icons.keyboard),//icono al final del campo de texto
                icon: Icon(Icons.account_circle),//icono al inicio del campo de texto
              ),
            ),
          ),
        ],
      ),
    );
  }
}