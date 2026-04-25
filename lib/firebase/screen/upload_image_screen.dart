//pantalla para subir informacion a firebase con imagenes
import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/firebase/models/foto.dart';
import 'package:flutter_application_1/firebase/services/alumno_service.dart';
import 'package:image_picker/image_picker.dart';
import 'package:uuid/uuid.dart';

class UploadImageScreen extends StatefulWidget {
  const UploadImageScreen({super.key});

  @override
  State<UploadImageScreen> createState() => _UploadImageScreenState();
}

class _UploadImageScreenState extends State<UploadImageScreen> {
  final picker = ImagePicker();
  File? imagen;//imagen que se va a subir a firebase
  String path = "";//donde esta la imagen

  //future para lectura/escritura de archivos
  Future<void> getImage(ImageSource source) async {
    final imagenSeleccionada =  await picker.pickImage(source: source);//abrimos camara o galeria dependiendo del source
    setState(() {
      if(imagenSeleccionada != null){
        imagen = File(imagenSeleccionada.path);
        path = imagenSeleccionada.path;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ejemplo imagenes")),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            child : Column(
              children: [
                imagen == null ? Text ("Sin imagen") : Image.file(imagen!),//si no hay imagen mostrar texto, si hay imagen mostrarla
                SizedBox(height: 20,),
                MaterialButton(
                  minWidth: double.maxFinite,
                  height: 50,
                  color: Color.fromRGBO(20, 81, 236, 1),
                  elevation: 5,
                  shape : BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(5)
                  ),

                  onPressed: () async{
                    //GENERAR LA IMAGEN
                    final file = File(path);//subir el archivo a firebase
                    final metadata = SettableMetadata(contentType: 'image/jpeg');//definir el tipo de archivo
                    final ref = FirebaseStorage.instance.ref().child("JQ7F/${const Uuid().v4()}.jpg");//definir la ruta donde se va a guardar la imagen
                    final UploadTask uploadTask = ref.putFile(file, metadata);//subir la imagen a firebase

                    uploadTask.snapshotEvents.listen((snapshot) {
                      final progreso = snapshot.bytesTransferred / snapshot.totalBytes;
                      print("Progreso: $progreso");
                    });
                      final snapshot = await uploadTask;
                      final url = await snapshot.ref.getDownloadURL();
                      //print(url);
                      Foto f = Foto(url: url);
                      await AddFoto(f);
                  },

                  child: const Text("Subir imagen",
                  style: TextStyle(color: Colors.white)
                  ),

                )
              ],
            )
          ),
        ),

        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () => getImage(ImageSource.camera),
              child: Icon(Icons.camera_alt),
            ),
            
            SizedBox(height: 10,),

            FloatingActionButton(
              onPressed: () => getImage(ImageSource.gallery),
              child: Icon(Icons.photo_library),
            ),

          ],
        ),
    );
  }
}