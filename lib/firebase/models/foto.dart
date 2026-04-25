import 'package:flutter/material.dart';

class Foto{

String url;
Foto({required this.url});

Map<String, dynamic> toJson(){
  return {'url': url};
  }
}