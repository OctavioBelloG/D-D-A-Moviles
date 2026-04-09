import 'package:flutter/material.dart';
import 'package:flutter_application_1/firebase/models/alumno.dart';
import 'package:flutter_application_1/firebase/services/alumno_service.dart';
class ListAlumnosScreen extends StatelessWidget {
  const ListAlumnosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lista Alumnos'),),
      
      body: FutureBuilder(
        future: GetAlumnosDocId(),
        //Future: GetAlumnosDocId(),
        builder: (context, snapshot){
          if (snapshot.hasData){
            return ListView.builder(
              itemCount: snapshot.data?.length,//
              itemBuilder: (context, index){
                //declarar variable temporal
                Alumno alumno = snapshot.data?[index] as Alumno; //se va ir definiendo cada alumno
                //en el titulo mostrar el nombre del alumno
                return ListTile(
                  title: Text(alumno.nocontrol),
                  subtitle: Text(alumno.nombre),
                  onTap: () {
                    Navigator.pushNamed(context,
                      "/editAlumno",
                      arguments: alumno,
                    );
                  },
                  trailing: Icon(Icons.chevron_right),
                ); //agergar los elementos de la lista
              }
            );
          }
          else if(snapshot.hasError){
            return Text('Error');
          } else {
          return Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/addAlumno');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
