import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_application_1/clase_280226/Movimiento.dart';
import 'package:flutter_application_1/clase_280226/cuenta_bloc.dart';

class RetiroScreen extends StatelessWidget {
  const RetiroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController txtController = TextEditingController();
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(title: Text("Retiros"),),
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
                  controller: txtController,//LINEA 62
                  decoration: InputDecoration(//decoracion del campo de texto
                    border: OutlineInputBorder(//borde del campo de texto
                      borderRadius: BorderRadius.circular(20.0),//borde redondeado
                    ),
                    //counter: Text('Letras 0'),//contador de letras
                    hintText: "ej. 4,000.00",//texto de sugerencia
                    labelText: "Cantidad",//etiqueta del campo de texto
                    helperText: "Ingrese su cantidad",//texto de ayuda debajo del campo de texto
                    suffixIcon: Icon(Icons.keyboard),//icono al final del campo de texto
                    //icon: Icon(Icons.currency_bitcoin),//icono al inicio del campo de texto
                  ),
                  keyboardType: TextInputType.numberWithOptions(),//tipo de teclado que se va a mostrar al agregar
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
                  onPressed: () {
                    if(formKey.currentState!.validate()){
                      context.read<CuentaBloc>()
                      .add(
                      Retirar(
                        Movimiento(
                          cantidad: double.parse(txtController.text),
                          tipo: "retiro")),//se realiza un casteo por la diferencia de tipos de dato
                      //de cantidad y abono
                    );
                    Navigator.pop(context);//cuadro de dialogo
                    }
                  },
                  icon: Icon(Icons.airplay_rounded),
                  label: Text("Aceptar"),
                ),
              ],
            )),
          ),
        ],
      ),
    );
  }
}