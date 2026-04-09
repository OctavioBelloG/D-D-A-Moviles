import 'package:flutter/material.dart';
import 'package:flutter_application_1/clase_140226/contador_provider.dart';
import 'package:provider/provider.dart';

//statefulW+tab //para crear
class ContadorWidget extends StatefulWidget {
  const ContadorWidget({super.key});

  @override
  State<ContadorWidget> createState() => _ContadorWidgetState();
  //metodo para crear el estado del widget, se llama a la clase que maneja el estado depende del widget
}

class _ContadorWidgetState extends State<ContadorWidget> {
////  int contador = 0; //variable para almacenar el valor del contador //se declara en la clase contador
  @override //variables definidas antes del override para que se mantengan en el estado del widget
  Widget build(BuildContext context) {
    return Center( //ctrl+. wrap with center
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,//centrar el contenido del widget
        children: [
          Text(
            context.watch<ContadorProvider>().contador.toString(),//se utiliza el context para acceder al contador provider y obtener el valor del contador, watch para escuchar los cambios en el contador y actualizar la interfaz cuando cambie
            style: TextStyle(
              fontSize: 120,
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          OutlinedButton(
            onPressed: () {
              setState(() {
                //incrementar el contador
                context.read<ContadorProvider>().incrementar(); //se utiliza el context para acceder al contador provider y llamar al metodo incrementar para aumentar el valor del contador, read para acceder al contador sin escuchar los cambios, ya que el boton no necesita actualizar la interfaz cuando se presiona
              }); //actualizar el estado del widget para que se refleje el cambio en la interfaz
          }, 
          child: Text("Incrementar")),
        ],
      ),
    );
  }
}
