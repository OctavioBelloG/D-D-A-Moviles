import 'package:flutter/material.dart';
import 'package:flutter_application_1/firebase/models/alumno.dart';
import 'package:flutter_application_1/firebase/services/alumno_service.dart';
//importM+tab
//statelesW+tab
class EditAlumnoScreen extends StatefulWidget {
  const EditAlumnoScreen({super.key});

  @override
  State<EditAlumnoScreen> createState() => _EditAlumnoScreenState();
}
class _EditAlumnoScreenState extends State<EditAlumnoScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController txtNombre = TextEditingController();
    TextEditingController txtNoControl = TextEditingController();
    //procesar datos dentro de la pantalla
    final Alumno alumno = ModalRoute.of(context)!
                          .settings.arguments as Alumno;
    txtNombre.text = alumno.nombre;
    txtNoControl.text = alumno.nocontrol;//PORUQE DICE CARRERA???????????????????????????????????????????????????????????????????????????
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(title: Text("Actualizar Alumno"),),
      body: Column(
        children: [
          Padding(padding: const EdgeInsets.all(12),
          //widget form
          //al algregar un formulario se debe de agregar una lalave de estado
            child: Form(
              key: formKey,
              child: Column(
                children: [//otro textfiel ._. 

                  TextFormField( //campo de texto//ctrl+. = wrap with padding //OBTENER INFORMACION PARA INCREMENTAR
                  //Usar controlardores o controller
                  controller: txtNoControl,//LINEA 62
                  decoration: InputDecoration(//decoracion del campo de texto
                    border: OutlineInputBorder(//borde del campo de texto
                      borderRadius: BorderRadius.circular(20.0),//borde redondeado
                    ),
                    //counter: Text('Letras 0'),//contador de letras
                    hintText: "22TE0259",//texto de sugerencia
                    labelText: "Número de control",//etiqueta del campo de texto
                    helperText: "Ingrese su matricula",//texto de ayuda debajo del campo de texto
                    suffixIcon: Icon(Icons.keyboard),//icono al final del campo de texto
                    //icon: Icon(Icons.currency_bitcoin),//icono al inicio del campo de texto
                  ),
                  //validar que no este vacio el campo
                  validator: (value){
                    if(value!.isEmpty){
                      return "campo requerido";
                    }
                    // checar validaccion con letras
                    return null;
                  },
                ),

                                SizedBox(height: 20,),

                TextFormField( //campo de texto//ctrl+. = wrap with padding //OBTENER INFORMACION PARA INCREMENTAR
                  //Usar controlardores o controller
                  controller: txtNombre,//LINEA 62
                  decoration: InputDecoration(//decoracion del campo de texto
                    border: OutlineInputBorder(//borde del campo de texto
                      borderRadius: BorderRadius.circular(20.0),//borde redondeado
                    ),
                    //counter: Text('Letras 0'),//contador de letras
                    hintText: "chacho",//texto de sugerencia
                    labelText: "Nombre del alumno",//etiqueta del campo de texto
                    helperText: "Ingrese su nombre",//texto de ayuda debajo del campo de texto
                    suffixIcon: Icon(Icons.keyboard),//icono al final del campo de texto
                    //icon: Icon(Icons.currency_bitcoin),//icono al inicio del campo de texto
                  ),
                  //validar que no este vacio el campo
                  validator: (value){
                    if(value!.isEmpty){
                      return "campo requerido";
                    }
                    // checar validaccion con letras
                    return null;
                  },
                ),

                OutlinedButton.icon(
                  onPressed: () async {
                    if(formKey.currentState!.validate()){
                      Alumno a = Alumno(
                        id: alumno.id,
                        nocontrol: txtNoControl.value.text,
                        nombre: txtNombre.value.text,
                      );
                      int code = await editAlumno(a);
                    // Navigator.pop(context);//cuadro de dialogo
                    Navigator.of(
                      context,
                      ).pushNamedAndRemoveUntil('/', (route) => false);
                    }
                  },
                  icon: Icon(Icons.airplay_rounded),
                  label: Text("Aceptar"),
                ),
                OutlinedButton(onPressed: (){
                  Navigator.pushNamed(
                    context,
                    '/deleteAlumno',
                    arguments: alumno);
                },
                child: Text("Ir a eliminar"))
              ],
            )),
          ),
        ],
      ),
    );
  }
}
