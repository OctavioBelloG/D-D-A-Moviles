import 'package:flutter/material.dart';

class DialogsWidget extends StatelessWidget {
  const DialogsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton.icon(//se agregar un icono
              onPressed: () {//
                _showSimpleDialog(context);
              },
              icon: Icon(Icons.android),
              label: Text("Simple"),
            ),
            SizedBox(
              height: 50,
            ),
            OutlinedButton.icon(
              onPressed: () {
                _showAlertDialog(context);
              },
              icon: Icon(Icons.android),
              label: Text("Alert"),
            ),
          ],
        ),
      );
  }

  void _showSimpleDialog(BuildContext context) {
    showDialog(
      context: context,//recibe el contexto
      builder: (context) {
        return SimpleDialog(
          title: Text("Seleccione una opción"),
          children: [
            RadioListTile(//radio de valores
              value: "isc",
              groupValue: "carrera",
              onChanged: (value) {},
              title: Text("Sistemas"),
            ),
            RadioListTile(
              value: "inf",
              groupValue: "carrera",
              onChanged: (value) {},
              title: Text("Informática"),
            ),
            RadioListTile(
              value: "mec",
              groupValue: "carrera",
              onChanged: (value) {},
              title: Text("Mecatrónica"),
            ),
            RadioListTile(
              value: "ali",
              groupValue: "carrera",
              onChanged: (value) {},
              title: Text("Alimentarias"),
            ),
            RadioListTile(
              value: "ind",
              groupValue: "carrera",
              onChanged: (value) {},
              title: Text("Industrial"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: OutlinedButton.icon(
                onPressed: () {
                  Navigator.pop(context);//cuadro de dialogo
                },
                icon: Icon(Icons.airplay_rounded),
                label: Text("Aceptar"),
              ),
            ),
          ],
        );
      },
    );
  }

  void _showAlertDialog(BuildContext context) {//alerta que confirma si se realiza el procedimiento o no
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Confirme"),
          content: Text("¿Esta seguro que desea ejecutar esa acción"),
          actions: [
            OutlinedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Si"),
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.pop(context);//.pop cierra el ultimio elemento
              },
              child: Text("No"),
            ),
          ],
        );
      },
    );
  }
}
