import 'package:flutter/material.dart';

class CardlistWidget extends StatelessWidget {//clase con un widget 
  
  const CardlistWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        
        // CardExample(
        //   url:
        //       "https://lenguajesdeprogramacion.net/wp-content/uploads/2018/08/java-lenguaje-de-programacion-logo.png",
        //   titulo: "Programación en Java",
        // ),
        // CardExample(
        //   url:
        //       "https://www.freecodecamp.org/espanol/news/content/images/size/w2000/2022/03/para-que-se-usa.png",
        //   titulo: "Programación en Python",
        // ),
        // CardExample(
        //   url:
        //       "https://csharp-station.com/wp-content/uploads/2017/04/4-Best-C-Libraries-for-Image-Processing.jpg",
        //   titulo: "Programación en C#",
        // ),
        CardExample(
          titulo: "Dinero perdido",
          url: "assets/waza.jpg",
          descripcion: "Descripción:",
          texto: "Una vez encargue una aspiradora que no funciono y no me la reembolzaron :/",
        ),
        CardExample(
          titulo: "Momentos antes de la trajedia",
          url: "assets/WIN_20231020_13_01_48_Pro.jpg",
          descripcion: "Descripción:",
          texto: "En tercer semestre cuando tenia el pelo corto momentos antes antes de que 'ALGUIEN' me mandara a repite",
        ),
        CardExample(
          titulo: "Chamba",
          url: "assets/cosecha.jpg",
          descripcion: "Descripción:",
          texto: "No soy yo pero facil seria yo en el rancho cosechando limones 👌😁",
        ),
      ],
    );
  }
}

class CardExample extends StatelessWidget { //clase con 2 variables //statelesswdget mantiene el valor sin modificar
  final titulo;
  final url;
  final texto;
  final descripcion;

  const CardExample({super.key, this.titulo, this.url, this.descripcion, this.texto}); //se manda al constructor con los 2 elementos

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 192, 192, 192),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: [
        SizedBox(height: 10),
        Text(titulo, style: TextStyle(fontSize: 20)),//texto del titulo
        SizedBox(height: 10),

        ClipRRect(//widget para recortar la imagen con bordes redondeados
            borderRadius: BorderRadius.circular(20.0),
            child: Image.network(url, fit: BoxFit.cover),
        ),
          
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.favorite), color: Colors.red,), //boton de favorito con un icono de corazon y color rojo
            IconButton(onPressed: () {}, icon: Icon(Icons.share), color: const Color.fromARGB(255, 74, 74, 74),),
            IconButton(onPressed: () {}, icon: Icon(Icons.save), color: Colors.blue,),
          ],
        ),

          SizedBox(height: 10), //caja invisible de separacion
          
          Text(descripcion),
          SizedBox(height: 10),
          Text(texto),
          SizedBox(height: 10),
          
          Padding( //con el padding colocar los botones
            padding: const EdgeInsets.only(right: 15), //separacion del boton del borde derecho
            child: Row( //como hijo agregar una fila
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton( //elementos como botones
                  onPressed: () {},
                  child: 
                  Text("Guardar", //texto del boton
                    style: TextStyle(color: Colors.blue, fontSize: 15), //color del texto del boton
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}
