import 'package:flutter/material.dart';


class PositionedWidget extends StatelessWidget {
  const PositionedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(//dar ctrl+. swap white para cambiar el scaffold por un container //ctrl+. en scaffold para removerlo
      color: Colors.blue[50],
      height: double.infinity,
      width: double.infinity,
      child: Stack(//permite colocar elementos uno encima de otro //similar a un contenedor pero con la capacidad de posicionar los elementos dentro de el
        children: [
          Positioned(//posicionar los elementos dentro del stack con h y w
            top: 160,
            left: 10,
            child: box(//clase box para crear un cuadro rojo con sombra
              h: 100,
              w: 100,
            ),
          ),
          Positioned(
            top: 160,
            right: 10,
            child: box(
              h: 100,
              w: 100,
            ),
          ),
          Positioned(
            top: 500,
            left: 55,
            child: box(
              h: 50,
              w: 300,
            ),
          ),
          Positioned(
            top: 300,
            left: 155,
            child: box(
              h: 100,
              w: 100,
            ),
          ),
        ],
      ),
    );
  }
}

class box extends StatelessWidget { //clase para crear un cuadro rojo con sombra
  final double w;
  final double h;

  const box({super.key, required this.w, required this.h});//constructor que declara los valores de w y h para el ancho y alto del cuadro

  @override
  Widget build(BuildContext context) {//metodo para construir el widget del cuadro rojo con sombra
    return Container(//paneles con propiedades de alto y ancho
      width: w,
      height: h,
      decoration: BoxDecoration(//decoracion del cuadro con color y sombra
        color: Colors.red,
        boxShadow: [
          BoxShadow(//propiedades de la sombra del cuadro
            color: Colors.black,
            offset: Offset(5, 5),
            blurRadius: 10.0,
          ),
        ],
      ),
    );
  }
}
