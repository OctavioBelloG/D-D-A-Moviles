import 'package:flutter/material.dart';

class RowcolumnsWidget extends StatelessWidget {
  const RowcolumnsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0), //separacion al widget es de 10
      child: Column( //como hijo del pading se agrega una columna//los 3 elementos
        children: [
          Row(
            children: [ 
              Icon(Icons.access_alarm),
              SizedBox(width: 15),
              Expanded(child: Text("Activar Alarma")),//usar todo el espacio disponible hasta el switch, hijo el tecto "activar alarma"
              Switch(value: false, onChanged: (value) {}),//si es true el switch estara activado
            ],
          ),
          Divider(),
          Row(
            children: [
              Icon(Icons.gps_fixed_outlined),
              SizedBox(width: 15),
              Expanded(child: Text("Activar Localización")), 
              Switch(value: false, onChanged: (value) {}),
            ],
          ),
          Divider(),
          Row(
            children: [
              Icon(Icons.surround_sound_sharp),
              SizedBox(width: 15),
              Expanded(child: Text("Desactivar Sonido")),
              Switch(value: true, onChanged: (value) {}),
            ],
          ),
          Divider(),
        ],
      ),
    );
  }
}
