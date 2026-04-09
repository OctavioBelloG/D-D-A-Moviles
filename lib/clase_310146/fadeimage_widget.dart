import 'package:flutter/material.dart';

class FadeimageWidget extends StatelessWidget {
  const FadeimageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: FadeInImage(
          placeholder: AssetImage("assets/gato.png"),
          image: NetworkImage(
            "https://www.gob.mx/cms/uploads/image/file/277131/YOUTUBE.jpg",
          ),
        ),
      ),
    );
  }
}
