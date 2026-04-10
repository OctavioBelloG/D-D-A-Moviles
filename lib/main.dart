
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/clase_07022026/future_wisget.dart';
import 'package:flutter_application_1/clase_070326/retiro_screen.dart';
import 'package:flutter_application_1/clase_140226/contador_provider.dart';
import 'package:flutter_application_1/firebase/screen/add_alumno_screen.dart';
import 'package:flutter_application_1/firebase/screen/delete_alumno_screen.dart';
import 'package:flutter_application_1/firebase/screen/edit_alumno_screen.dart';
import 'package:flutter_application_1/firebase/screen/list_alumnos_screen.dart';
import 'package:flutter_application_1/firebase_options.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'Unidad_1/columnas.dart';
import 'Unidad_1/filas.dart';
import 'Unidad_1/imagen.dart';
import 'Unidad_1/lista.dart';
import 'clase_310146/scaffold_widget.dart';
import 'clase_280226/banco_screen.dart';
import 'clase_280226/cuenta_bloc.dart';

//trabajar con el metodo principal
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(MyApp());
}

 //declarar un lWidget ///PARA PROVIDER //SOLO WIDGET
// class MyApp extends StatelessWidget {

//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [
//         ChangeNotifierProvider(create: (context) => ContadorProvider()), //se crea una instancia del contador provider para manejar el estado del contador en la aplicacion
//       ],
//       child: MaterialApp( //es posible retornar una interfaz o un elemento especifico //lWidget PRINCIPAL
//         title: 'Mi Primera App', //titulo de la aplicacion
//         debugShowCheckedModeBanner: false, //elimina la etiqueta de debug en la esquina de la aplicacion
//         home:  ScaffoldWidget()//pantalla principal de la aplicacion
//       ),
//     ); 
//   }
// }

//PARA BLOC
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (ccontext) => CuentaBloc(),//control de estado va a ser cuenta
      child: MaterialApp( //es posible retornar una interfaz o un elemento especifico //lWidget PRINCIPAL
        title: 'Mi Primera App', //titulo de la aplicacion
        debugShowCheckedModeBanner: false, //elimina la etiqueta de debug en la esquina de la aplicacion
        //home:  BancoScreen()//pantalla principal de la aplicacion
        //RUTAS DE NAVEGACION
        initialRoute: '/',
        ////initialRoute: '/Banco',
        routes:{//espesificar como son las rutas AQUI!
          // '/': (context) => BancoScreen(),
          // '/retiro': (_) => RetiroScreen()       
          '/': (_) => ListAlumnosScreen(),
          '/addAlumno': (_) => AddAlumnoScreen(),
          '/editAlumno': (_) => EditAlumnoScreen(),
          '/deleteAlumno': (_) => DeleteAlumnoScreen(),
        },
      ),
    ); 
  }
}
