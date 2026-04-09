import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget { //clase para el widget stack 
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 99, 238, 80),
      child: Stack(
        children: [
          Container(
            color: Colors.red,
            height: 600,
            width: 600,
          ),
          Container(
            color: Colors.blue,
            height: 400,
            width: 400,
          ),
          Container(
            color: Colors.yellow,
            height: 200,
            width: 200,
          )
        ],
      ),
    );
  }
}