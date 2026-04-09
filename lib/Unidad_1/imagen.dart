import 'package:flutter/material.dart';

class ImagenScreen extends StatelessWidget{
  const ImagenScreen({super.key});

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: Text("img")),
        body: Center(
          child: Image.asset('assets/olo.png', width: 70, height: 70,),
        ),
      );
    }
  }
