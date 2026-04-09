import 'package:flutter/material.dart';

class PaddingWidget extends StatelessWidget {
  const PaddingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: FadeInImage(
            placeholder: AssetImage("assets/olo.png"),
            image: NetworkImage(
              "https://www.gob.mx/cms/uploads/image/file/277131/YOUTUBE.jpg",
            ),
          ),
        ),
      ),
    );
  }
}
