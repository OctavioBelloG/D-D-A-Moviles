import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(32.0), //margen interno
      height: 330,//alto del contenedor
      child: Card(//tarjeta o cuadro de contenido
        shape: RoundedRectangleBorder(//borde redondeado de la tarjeta
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column( //guarda el comuln en el child de la tarjeta
            children: [
              ClipRRect(//recorta la imagen con bordes redondeados
                borderRadius: BorderRadius.circular(20.0),
                child: Image.network(//imagen 
                  "https://concepto.de/wp-content/uploads/2014/08/programacion-2-e1551291144973.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 10),
              Text("Curso de Programación"),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        "Solicitar Información",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                    OutlinedButton(onPressed: () {}, child: Text("Inscribirse")),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
