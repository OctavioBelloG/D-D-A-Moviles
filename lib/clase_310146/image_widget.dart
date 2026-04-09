import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.network(
        "https://www.tijuana.tecnm.mx/wp-content/uploads/2020/03/LOGO-TecNM-VERTICAL_DIGITAL-Azul.jpg",
        height: 200,
        width: 200,
        //fit: BoxFit.fill, // Por si se desea que la imagen no tenga el mismo width y height
      ),
    );
  }
}
