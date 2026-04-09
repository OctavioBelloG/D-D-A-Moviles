import 'package:flutter/material.dart';

class ContadorProvider extends ChangeNotifier {
  int _contador = 0; //el contador iniciarar en 0
  //al ser una propiedad privada se necesita una propiedad para acceder a ella desde fuera de la clase
  int get contador => _contador; //getter para acceder al contador desde fuera de la clase

  void incrementar() {
    _contador++; //incrementar el contador
    notifyListeners(); //notificar a los widget que el estado ha cambiado para que se actualice la interfaz
  }

}