import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/clase_07022026/doc.dart';
import 'package:http/http.dart'
    as http; //importar paquete http con el alias http para realizar solicitudes http

class FutureWidget extends StatelessWidget {
  const FutureWidget({super.key});

  Future<int> getNumero() async {
    await Future.delayed(
      Duration(seconds: 5),
    ); //simula una tarea asincrona que tarda 5 segundos
    return 10; //retorna un numero despues de la espera "10"
  }

  Future<Dog> getDog() async {
    final Uri url = Uri.https(
      "dog.ceo",
      "/api/breeds/image/random",
    ); //creacion de la url para la solicitud http
    final response = await http.get(
      url,
    ); //se hace la solicitud http y espera de la respuesta
    //validar el codigo
    if (response.statusCode == 200) {
      //si el codigo de respuesta es 200, se procesa la respuesta
      return Dog.fromJson(json.decode(response.body));
    } else {
      throw Exception(
        "Error al obtener informacion del digo",
      ); //si el codigo no es 200, se lanza una excepcion
    }
  }

  @override
  Widget build(BuildContext context) {
    //el future no se enlaza con un wudget de forma normal, se necesita un futurebuilder para manejar la conexion entre el future y el widget
    return FutureBuilder(
      future: getDog(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          //si el snapshot tiene datos, se muestra el numero
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(
                    20,
                  ), //redondear los bordes de la imagen
                  child: FadeInImage(
                    placeholder: const AssetImage(
                      "assets/Loading.gif",
                    ), //imagen de carga mientras se obtiene la imagen del perro
                    image: NetworkImage(snapshot.data!.message),
                  ),
                ),
                Text(
                  snapshot.data!.status,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ); //muestra el numero obtenido del future
        } else if (snapshot.hasError) {
          return Center(
            child: Text(
              snapshot.error.toString(),
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          );
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
