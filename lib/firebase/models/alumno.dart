//GENERAR LOS ELEMENTOS NECESARIOS
class Alumno { //CLASE PARA QUE SE CONECTE CON LA DEL PROYECTO DE FIREBASE  
  String? id; //opcional
  String nombre;
  String nocontrol;
  Alumno({
    this.id, required this.nombre, required this.nocontrol});

  factory Alumno.fromFirebase(Map<String, dynamic> json){
    return Alumno(
      id: json['id'],
      nombre: json['nombre'],
      nocontrol: json['nocontrol'],
    );
  }//despues regreso pa modificar algo

  Map<String, dynamic> toJson(){
    return {'nombre': nombre, 'nocontrol': nocontrol};
  }

  factory Alumno.fromFirebaseDoc(String doc, Map json){
    return Alumno(
      id: doc,
      nocontrol: json['nocontrol'],
      nombre: json['nombre'],
    );
  }
}
