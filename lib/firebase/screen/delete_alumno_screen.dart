import 'package:flutter/material.dart';
import 'package:flutter_application_1/firebase/models/alumno.dart';
import 'package:flutter_application_1/firebase/services/alumno_service.dart';

class DeleteAlumnoScreen extends StatelessWidget {
  const DeleteAlumnoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Alumno alumno = ModalRoute.of(context)!
    .settings.arguments as Alumno;
    return Scaffold(
      appBar: AppBar(title: Text("Eliminar Alumno")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Tas seguro de querer eliminar del registro a: ${alumno.nombre}?'),
          SizedBox(height: 50),
          OutlinedButton(onPressed: () async {
            int code = await deleteAlumno(alumno.id!);
            if(code == 200 && context.mounted){
              ScaffoldMessenger.of(
                context)
                .showSnackBar(const SnackBar(content: Text("Eliminado")));
              Navigator.of(
                context,
              ).pushNamedAndRemoveUntil('/', (route) => false);
            } 
          }, child: Text("Eliminar"))
        ],
      )
    );
  }
}
