//nombre de la clase
class Dog{
  final String message; //final es como  constante, no se puede cambiar su valor
  final String status;
  //agregar el constructor
  Dog({required this.message, required this.status});

  //diccionario de datos /constructor factory
  factory Dog.fromJson(Map <String, dynamic> json){ //recibira como parametro un mapa //en ajava es object y dart es dynamic
    String urlTemp = json['message'].toString();//asignacion de valor a la variable temporal //jsonmensaje es lo que llega de la solicitud
    //regresar la url procesada
    urlTemp = urlTemp.replaceAll('\\', '');//reemplazar los caracteres no deseados
    return Dog(status: json["status"].toString(), message: urlTemp);//retornar el doc o nueva instancia de dog
  } 

  // //funcion
  // void Acceso(){
  //   Dog d = Dog(message: "url foto", status: "success");//declasracion de objeto de la clase dog
  // }
}

