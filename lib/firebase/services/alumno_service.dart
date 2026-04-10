//almno service
import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/alumno.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

//metodo para regresar los elementos de la conlección
Future<List<Alumno>> GetAlumnos() async{
  CollectionReference coleccion = db.collection('Alumnos');//ahi va el nombre de la collecion
  //hacer un get
  QuerySnapshot queryAlumnos = await coleccion.get();
  
  //despues de la referencia a la coleccion y la informacion hay que hacerla en una lista de alumnos***

  return queryAlumnos.docs.map( //se recorren todos los docimentos que vuenen 
    (a) => Alumno.fromFirebase(a.data() as Map<String, dynamic>) //y se convierte en un valor que puede ser leico
  ).toList();
}

Future<int> AddAlumno(Alumno a) async{
  CollectionReference collection = db.collection('Alumnos');
  int code = 0;
  try{
    await collection.add(a.toJson());
    code = 200;
  } catch (e) {
    code = 500;
  }
  return code;
}

Future<int> editAlumno(Alumno p) async {
  CollectionReference coleccion = db.collection('Alumnos');
  int code = 0;
  try {
    await coleccion.doc(p.id).update(p.toJson());
    code = 200;
  } catch (e) {
    code = 500;
  }
  return code;
}

Future<List<Alumno>> GetAlumnosDocId() async{
  CollectionReference coleccion = db.collection('Alumnos');
  QuerySnapshot queryAlumnos = await coleccion.get();
    return queryAlumnos.docs.map(
      (a) => Alumno.fromFirebaseDoc(a.id, a.data() as Map<String, dynamic>)//agregar los parametros de screen
    ).toList();
}

Future<int> deleteAlumno(String id) async{
  CollectionReference coleccion = db.collection("Alumnos");
  int code = 0;
  try {
    await coleccion.doc(id).delete();
    code = 200;
  } catch (e) {
    code = 500;
  }
  return code;
}