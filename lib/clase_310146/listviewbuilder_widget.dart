import 'package:flutter/material.dart';

class ListviewbuilderWidget extends StatelessWidget {
  final List<Alumno> _alumnos = [
    //lista de objetos con la clase alumno con sus respectivos valores de nombre y carrera
    Alumno(carrera: "Sistemas Computacionales", nombre: "Hugo"),
    Alumno(carrera: "Informática", nombre: "Paco"),
    Alumno(carrera: "Mecatrónica", nombre: "Luis"),
  ];

  ListviewbuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _alumnos.length, //cantidad de elementos que se van a mostrar en la lista
      itemBuilder: (context, index) {//funcion que construye cada elemento de la lista //recibe el contexto y el indice del elemento actual
        Alumno tempAlumno = _alumnos[index];//clase temporal para almacenar el alumno actual de la lista //similar a un for que recorre la lista de alumnos
        return ListTile(//widget que representa un elemento propio de la lista
          leading: CircleAvatar(
            child: Text(tempAlumno.nombre.substring(0, 2).toUpperCase()),//avatar circular con las iniciales del nombre del alumno 
            //substring para obtener los primeros 2 caracteres del nombre y toUpperCase para convertirlos a mayusculas
          ),
          title: Text(tempAlumno.nombre),
          subtitle: Text(tempAlumno.carrera),
          trailing: Icon(Icons.arrow_right),
        );
      },
    );
  }
}

class Alumno {
  //clase alumno con valores final por no ser constantes
  final String nombre;
  final String carrera;
  //final String id;

  Alumno({
    required this.nombre,
    required this.carrera,
    //required this.id,
  });

  get id => null; //constructor que tiene que tener todos los valores de la clase
  //no importa el orden de los valores pero se tienen que agregar
  //las llaven indican que los parametros no deben de ir en orden
}
